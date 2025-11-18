import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:intl/intl.dart';
import '../constants/colors.dart';

class ReadingsScreen extends StatefulWidget {
  final DateTime date;

  const ReadingsScreen({super.key, required this.date});

  @override
  State<ReadingsScreen> createState() => _ReadingsScreenState();
}

class _ReadingsScreenState extends State<ReadingsScreen> {
  late final WebViewController _controller;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Optional: Update progress if needed
          },
          onPageStarted: (String url) {
            setState(() {
              _isLoading = true;
              _errorMessage = null;
            });
          },
          onPageFinished: (String url) {
            setState(() {
              _isLoading = false;
            });
            // Optional JS injection to hide unwanted elements (e.g., header/footer)
            // Be cautious: Only hide non-content parts to avoid altering copyrighted material
            _controller.runJavaScript("""
              document.querySelector('header')?.style.display = 'none';
              document.querySelector('footer')?.style.display = 'none';
              // Add more selectors if needed, but test thoroughly
            """);
          },
          onWebResourceError: (WebResourceError error) {
            setState(() {
              _isLoading = false;
              _errorMessage = 'Failed to load readings: ${error.description}';
            });
          },
        ),
      )
      ..loadRequest(Uri.parse(_generateUsccbUrl()));
  }

  String _generateUsccbUrl() {
    final formattedDate = DateFormat('MMddyy').format(widget.date);
    return 'https://bible.usccb.org/bible/readings/$formattedDate.cfm';
  }

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('MMMM d, yyyy').format(widget.date);

    return Scaffold(
      appBar: AppBar(
        title: Text('Readings for $formattedDate'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              _controller.reload();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
          if (_isLoading)
            const Center(
              child: CircularProgressIndicator(),
            ),
          if (_errorMessage != null)
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _errorMessage!,
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isLoading = true;
                        _errorMessage = null;
                      });
                      _controller.reload();
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
          // Attribution note (for compliance)
          Positioned(
            bottom: 16.0,
            left: 16.0,
            right: 16.0,
            child: Text(
              'Readings provided by USCCB (bible.usccb.org)',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textLightSecondary),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}