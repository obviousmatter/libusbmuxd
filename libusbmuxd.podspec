Pod::Spec.new do |s|

 s.name = "libusbmuxd"
 s.version = "1.0.0" 
 s.summary = "'usbmuxd' stands for \"USB multiplexing daemon\". This daemon is in charge of
multiplexing connections over USB to an iPhone or iPod touch."

 s.homepage = "https://github.com/libimobiledevice/libusbmuxd" 
 s.license = {:type => 'LGPL', :text => <<-LICENSE 
   The contents of this package are licensed under the GNU Lesser General Public
   License, version 2.1 or, at your option, any later version (see COPYING.LGPLv2.1).
   If a more permissive license is specified at the top of a source file, it takes
   precedence over this.
LICENSE
}

 s.author = 'Nikkias Bassen' 
 s.platform = :osx, '10.7' 
 s.source = { :git => "https://github.com/obviousmatter/libusbmuxd.git", :tag => "#{s.version}"}
 s.source_files = 'include/*.h', 'src/*.{h,c,m,cpp}'
 s.dependency 'libplist'
 s.public_header_files = 'include/usbmuxd.h'
 s.xcconfig = {"GCC_PREPROCESSOR_DEFINITIONS" => 'HAVE_PLIST',  "HEADER_SEARCH_PATHS" => '"${PODS_ROOT}/libplist/include/"'}
end