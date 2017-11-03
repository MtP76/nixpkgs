{ stdenv, fetchFromGitHub, gettext, glib, libxml2, pkgconfig, swig, automake, gobjectIntrospection, cmake, libtiff, libjpeg, fftw, exiv2, lensfun, gtkmm2, libraw, lcms2, libexif, vips, expat, pcre, pugixml }:

stdenv.mkDerivation {
  name = "photoflow-0.2.8";

  src = fetchFromGitHub {
    owner = "aferrero2707";
    repo = "PhotoFlow";
    rev = "914561fcb1ca97de4814c4024d9a76e4b435c2af";
    sha256 = "06gsw0yhkdnhgcvnbsc5s4agm678ap10djvji8m2qssgnjn26vgs";
  };

  buildInputs = [ gettext glib libxml2 pkgconfig swig automake gobjectIntrospection cmake libtiff libjpeg fftw exiv2 lensfun gtkmm2 libraw lcms2 libexif vips expat pcre pugixml ];

  enableParallelBuilding = true;

  meta = {
    description = "A fully non-destructive photo retouching program providing a complete RAW image editing workflow";
    homepage = http://aferrero2707.github.io/PhotoFlow/;
    license = stdenv.lib.licenses.gpl3Plus;
    platforms = with stdenv.lib.platforms; linux;
};

}
