import 'package:flutter/material.dart';
import 'category_detail_screen.dart';

class SocialTeachingsScreen extends StatelessWidget {
  const SocialTeachingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = 'Catholic Social Teachings';
    const String backgroundImageUrl = 'https://lh3.googleusercontent.com/aida-public/AB6AXuDbvloMyn56iHTQUSbipknIMnTdeXgDvSxcRAV4uQiu12Dlf39w__MQp-qr5YZ7-WWbLfPN0gs5d7q2x8C02c4XqbOPYtEm7Ygb0m2Y88xOEuyddriXO0sb3IV2R5mitwZQ099WNwCmGaGQaqYtkGkfLHEIhHdIyVfK1ntVEfTGAYHYGrYJWuLmecXpaiwkMxgmDLF0v2cs7wbt-veAYSe66Vq75QGo7dMToCJKMgWR_w86R940qCO-rNqOZaYTGohDhbbD6hkSegGu';
    const List<PrincipleItem> items = [
      PrincipleItem(
        imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuDMZV1SzXLFCAZf2YzeNV1T2IATxNw-og2rJvVEIaNWTx0USzfhKexVLXs4jEF17uiWgGKPHGGMd5wo-T2ahPJTfDuwcDF_X5eOa5jNCja_AWhFusInVa8At2k5SU3DvDmcobKvJlnGAFSEdSISEIc994YsOools_70WKtwnTVhV29mkQhlUypllXEQimzZNtQsdOqQC90XnkMLMAuEXYl5IDaylL9DLeahAl8qdPGnnJSjTDYiMIOF631vc8yDL23UQbzACuCkxmBb',
        label: 'Principle of Solidarity',
        title: 'Unity and Solidarity',
      ),
      PrincipleItem(
        imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuC49lArZ18VPk1wgkEwsXR6j4kOuipBEbDWn9JKgkRB8ibfsUO7sA9kqeIwDTox9ci_kLXt1DdMgOr_nGwI8QLrpU0PiLc661fYSjJNtsuMfrKkDfG2z0sRcb0KMlveFIoiPhzqk2qfL8Ip-7ACoeb3eGe475lhYm1UWIkLZKwlHJFRSlRfcNYlbKuXAA6vP-8Vrhh6UY2a96gHt8AIV-_tqSd9WrClzQFa0pQI1j8CbrWm1p4WarrQyDJ5IndpFFTmfULWIHqvE_M-',
        label: 'Dignity of Work',
        title: 'The Dignity of Work',
      ),
      PrincipleItem(
        imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuDbvloMyn56iHTQUSbipknIMnTdeXgDvSxcRAV4uQiu12Dlf39w__MQp-qr5YZ7-WWbLfPN0gs5d7q2x8C02c4XqbOPYtEm7Ygb0m2Y88xOEuyddriXO0sb3IV2R5mitwZQ099WNwCmGaGQaqYtkGkfLHEIhHdIyVfK1ntVEfTGAYHYGrYJWuLmecXpaiwkMxgmDLF0v2cs7wbt-veAYSe66Vq75QGo7dMToCJKMgWR_w86R940qCO-rNqOZaYTGohDhbbD6hkSegGu',
        label: 'Care for Creation',
        title: "Care for God's Creation",
      ),
      PrincipleItem(
        imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuA8vRXoDEn8I8XZxeH2FJ35XMiliKpL5mbohmKmUEPVO5GEDDjpEGNynwmZB523pK03U-2YJ6t4-Sr6XLzN441B49J_mTGdyfeDrg08Vq2Cz8mM3Rk5UNdWFcYzOCT4n3jTYEnDRI3Z8x8v4Prd15YUV1hq0A8trd9_WGEYC6XQ5OrpS-8ln2jqyPACxFIAb5FShdMtz2dVEZF5j3MYgGC9gjsZ6mdTVXCHBh2OMhpO3ZRjj5nbSyAzpHcYwxMPHqoxNJG_Dw2q3KBX',
        label: 'Option for the Poor',
        title: 'The Poor & Vulnerable',
      ),
    ];

    return CategoryDetailScreen(
      title: title,
      backgroundImageUrl: backgroundImageUrl,
      items: items,
    );
  }
}