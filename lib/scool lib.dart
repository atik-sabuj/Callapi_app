import 'package:amarschool/utill/color_resources.dart';
import 'package:amarschool/utill/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utill/images.dart';

class SchoolLibraryWidget extends StatefulWidget {
  const SchoolLibraryWidget({Key key}) : super(key: key);

  @override
  State<SchoolLibraryWidget> createState() => _SchoolLibraryWidgetState();
}

class _SchoolLibraryWidgetState extends State<SchoolLibraryWidget> {

  String dropdownValue1;
  String dropdownValue2;
  String dropdownValue3;
  String dropdownValue4;

  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
  

  void _showFilterOptions() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Categories Dropdown
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Categories',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                value: dropdownValue2,
                hint: Text(
                  'Select Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: <String>['Story', 'Poem', 'Subject Books']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue2 = newValue;
                  });
                },
              ),

              SizedBox(height: 10),

              // Publishers Dropdown
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Publishers',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                value: dropdownValue4,
                hint: Text(
                  'Select Publishers',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: <String>['Royal Books', 'BD Books', 'Bangla Bazar']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue4 = newValue;
                  });
                },
              ),

              SizedBox(height: 10),

              // Authors Dropdown
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Authors',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                value: dropdownValue1,
                hint: Text(
                  'Select Author',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: <String>['Humayun Ahmed', 'JK Rowling', 'Robindranath']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue1 = newValue;
                  });
                },
              ),

              SizedBox(height: 10),

              // Bookshelf Dropdown
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Bookshelf',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                value: dropdownValue3,
                hint: Text(
                  'Select Bookshelf',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: <String>['History', 'Poem', 'Science']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue3 = newValue;
                  });
                },
              ),

              SizedBox(height: 10),

              // Search TextField
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),

              SizedBox(height: 10),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  // Perform your filter logic here
                  Navigator.pop(context);
                },
                child: Text('Submit'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
        height: deviceSize.height * 2.34 / 4.5,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Button to open filter options
              ElevatedButton(
                onPressed: _showFilterOptions,
                child: Text('Show Filter Options'),
              ),
              SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              // Existing content
              Container(
                decoration: BoxDecoration(
                  color: ColorResources.lightWhite,
                  border: Border.all(color: ColorResources.WHITE,),
                  borderRadius: BorderRadius.circular(10.h),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}







///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}







///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}







///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




///// new

child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.h,
                          height: 68.h,
                          child: Image.asset(
                            Images.all_book,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Name', style: TextStyle(color: ColorResources.BLACK, fontSize: Dimensions.FONT_SIZE_18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Book Writer Name', style: TextStyle(color: ColorResources.blueColor, fontSize: Dimensions.FONT_SIZE_15, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.h,),
                            Text('Available', style: TextStyle(color: ColorResources.yelloColor),),
                          ],
                        ),
                        SizedBox(width: Dimensions.RADIUS_SMALL),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}v

