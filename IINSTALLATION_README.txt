The steps generally taken to retrieve ffmpeg source code and then to build it.

Also see this site:
  https://trac.ffmpeg.org/wiki/CompilationGuide/macOS


Steps Taken:
Step 1 (for top-of-tree):
  git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg
or, to download the specific 7.1.1 release, enter this in a web browser:
  https://www.ffmpeg.org/releases/ffmpeg-7.1.1.tar.xz


Step 2:
  xcode-select --install


Step 3:
  cd ffmpeg


Step 4: Configure FFmpeg:
The configure script allows you to customize the build with various options, such as enabling or disabling specific features and libraries. For a basic build, you can use:
  ./configure --prefix=/usr/local/ffmpeg --enable-shared

  --prefix=/usr/local/ffmpeg: Specifies the installation directory for the compiled binaries and libraries.
  --enable-shared: Builds FFmpeg as shared libraries, which are often preferred for dynamic linking with other applications. You can omit this to build static libraries instead.


Step 5: Compile FFmpeg:
After successful configuration, compile the source code using make. The -j flag can be used to leverage multiple CPU cores for faster compilation.
  make -j$(nproc) # Or use a specific number like make -j8


Step 6: Install FFmpeg:
Once the compilation is complete, install the compiled binaries and libraries to the specified --prefix directory:
  sudo make install

Step 7: Verify Installation:
Check if FFmpeg is installed correctly and accessible in your system's PATH:
  ffmpeg -version

This command should display the version information of your newly compiled FFmpeg. If the command is not found, you may need to add the installation directory (e.g., /usr/local/ffmpeg/bin) to your system's PATH environment variable.
