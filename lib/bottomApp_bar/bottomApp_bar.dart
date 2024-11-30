import 'package:blog/exports.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = -1; // Track the selected icon index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButton: Container(
        height: 10.h,
        width: 10.h,
        decoration: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent, // Set to transparent to show white container
          elevation: 0, // Remove default shadow
          child: SvgPicture.asset(AppSVGs.newBlog),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 80, // Adjusted height to accommodate text
        color: AppColors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavItem(0, AppSVGs.trending, AppSVGs.activeTrending, "Trending"),
            _buildNavItem(1, AppSVGs.search, AppSVGs.activeSearch, "Search"),
            _buildNavItem(2, AppSVGs.bookmark, AppSVGs.selectedBookmark, "Bookmark"),
            _buildNavItem(3, AppSVGs.profile, AppSVGs.selectedProfile, "Profile"),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, String defaultIconPath, String activeIconPath, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index; // Update selected index
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            _selectedIndex == index ? activeIconPath : defaultIconPath, // Switch between icons
            color: AppColors.black,
          ),
          if (_selectedIndex == index) // Display label only for the selected icon
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
