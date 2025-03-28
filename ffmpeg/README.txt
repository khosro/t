FFmpeg 64-bit static Windows build from www.gyan.dev

Version: 2022-05-12-git-30e2bb0f64-full_build-www.gyan.dev

License: GPL v3

Source Code: https://github.com/FFmpeg/FFmpeg/commit/30e2bb0f64

External Assets
frei0r plugins:   https://www.gyan.dev/ffmpeg/builds/ffmpeg-frei0r-plugins
lensfun database: https://www.gyan.dev/ffmpeg/builds/ffmpeg-lensfun-db

git-full build configuration: 

ARCH                      x86 (generic)
big-endian                no
runtime cpu detection     yes
standalone assembly       yes
x86 assembler             nasm
MMX enabled               yes
MMXEXT enabled            yes
3DNow! enabled            yes
3DNow! extended enabled   yes
SSE enabled               yes
SSSE3 enabled             yes
AESNI enabled             yes
AVX enabled               yes
AVX2 enabled              yes
AVX-512 enabled           yes
AVX-512ICL enabled        yes
XOP enabled               yes
FMA3 enabled              yes
FMA4 enabled              yes
i686 features enabled     yes
CMOV is fast              yes
EBX available             yes
EBP available             yes
debug symbols             yes
strip symbols             yes
optimize for size         no
optimizations             yes
static                    yes
shared                    no
postprocessing support    yes
network support           yes
threading support         pthreads
safe bitstream reader     yes
texi2html enabled         no
perl enabled              yes
pod2man enabled           yes
makeinfo enabled          yes
makeinfo supports HTML    yes
xmllint enabled           yes

External libraries:
avisynth                libilbc                 libsvtav1
bzlib                   libjxl                  libtheora
chromaprint             liblensfun              libtwolame
frei0r                  libmodplug              libuavs3d
gmp                     libmp3lame              libvidstab
gnutls                  libmysofa               libvmaf
iconv                   libopencore_amrnb       libvo_amrwbenc
ladspa                  libopencore_amrwb       libvorbis
libaom                  libopenjpeg             libvpx
libass                  libopenmpt              libwebp
libbluray               libopus                 libx264
libbs2b                 libplacebo              libx265
libcaca                 librav1e                libxavs2
libcdio                 librist                 libxml2
libdav1d                librubberband           libxvid
libdavs2                libshaderc              libzimg
libflite                libshine                libzmq
libfontconfig           libsnappy               libzvbi
libfreetype             libsoxr                 lzma
libfribidi              libspeex                mediafoundation
libgme                  libsrt                  sdl2
libgsm                  libssh                  zlib

External libraries providing hardware acceleration:
amf                     d3d11va                 nvdec
cuda                    dxva2                   nvenc
cuda_llvm               ffnvcodec               opencl
cuvid                   libmfx                  vulkan

Libraries:
avcodec                 avformat                swresample
avdevice                avutil                  swscale
avfilter                postproc

Programs:
ffmpeg                  ffplay                  ffprobe

Enabled decoders:
aac                     fourxm                  pcm_u32be
aac_fixed               fraps                   pcm_u32le
aac_latm                frwu                    pcm_u8
aasc                    g2m                     pcm_vidc
ac3                     g723_1                  pcx
ac3_fixed               g729                    pfm
acelp_kelvin            gdv                     pgm
adpcm_4xm               gem                     pgmyuv
adpcm_adx               gif                     pgssub
adpcm_afc               gremlin_dpcm            pgx
adpcm_agm               gsm                     photocd
adpcm_aica              gsm_ms                  pictor
adpcm_argo              h261                    pixlet
adpcm_ct                h263                    pjs
adpcm_dtk               h263i                   png
adpcm_ea                h263p                   ppm
adpcm_ea_maxis_xa       h264                    prores
adpcm_ea_r1             h264_cuvid              prosumer
adpcm_ea_r2             h264_qsv                psd
adpcm_ea_r3             hap                     ptx
adpcm_ea_xas            hca                     qcelp
adpcm_g722              hcom                    qdm2
adpcm_g726              hevc                    qdmc
adpcm_g726le            hevc_cuvid              qdraw
adpcm_ima_acorn         hevc_qsv                qpeg
adpcm_ima_alp           hnm4_video              qtrle
adpcm_ima_amv           hq_hqa                  r10k
adpcm_ima_apc           hqx                     r210
adpcm_ima_apm           huffyuv                 ra_144
adpcm_ima_cunning       hymt                    ra_288
adpcm_ima_dat4          iac                     ralf
adpcm_ima_dk3           idcin                   rasc
adpcm_ima_dk4           idf                     rawvideo
adpcm_ima_ea_eacs       iff_ilbm                realtext
adpcm_ima_ea_sead       ilbc                    rl2
adpcm_ima_iss           imc                     roq
adpcm_ima_moflex        imm4                    roq_dpcm
adpcm_ima_mtf           imm5                    rpza
adpcm_ima_oki           indeo2                  rscc
adpcm_ima_qt            indeo3                  rv10
adpcm_ima_rad           indeo4                  rv20
adpcm_ima_smjpeg        indeo5                  rv30
adpcm_ima_ssi           interplay_acm           rv40
adpcm_ima_wav           interplay_dpcm          s302m
adpcm_ima_ws            interplay_video         sami
adpcm_ms                ipu                     sanm
adpcm_mtaf              jacosub                 sbc
adpcm_psx               jpeg2000                scpr
adpcm_sbpro_2           jpegls                  screenpresso
adpcm_sbpro_3           jv                      sdx2_dpcm
adpcm_sbpro_4           kgv1                    sga
adpcm_swf               kmvc                    sgi
adpcm_thp               lagarith                sgirle
adpcm_thp_le            libaom_av1              sheervideo
adpcm_vima              libdav1d                shorten
adpcm_xa                libdavs2                simbiosis_imx
adpcm_yamaha            libgsm                  sipr
adpcm_zork              libgsm_ms               siren
agm                     libilbc                 smackaud
aic                     libjxl                  smacker
alac                    libopencore_amrnb       smc
alias_pix               libopencore_amrwb       smvjpeg
als                     libopenjpeg             snow
amrnb                   libopus                 sol_dpcm
amrwb                   libspeex                sonic
amv                     libuavs3d               sp5x
anm                     libvorbis               speedhq
ansi                    libvpx_vp8              speex
ape                     libvpx_vp9              srgc
apng                    libzvbi_teletext        srt
aptx                    loco                    ssa
aptx_hd                 lscr                    stl
arbc                    m101                    subrip
argo                    mace3                   subviewer
ass                     mace6                   subviewer1
asv1                    magicyuv                sunrast
asv2                    mdec                    svq1
atrac1                  metasound               svq3
atrac3                  microdvd                tak
atrac3al                mimic                   targa
atrac3p                 mjpeg                   targa_y216
atrac3pal               mjpeg_cuvid             tdsc
atrac9                  mjpeg_qsv               text
aura                    mjpegb                  theora
aura2                   mlp                     thp
av1                     mmvideo                 tiertexseqvideo
av1_cuvid               mobiclip                tiff
av1_qsv                 motionpixels            tmv
avrn                    movtext                 truehd
avrp                    mp1                     truemotion1
avs                     mp1float                truemotion2
avui                    mp2                     truemotion2rt
ayuv                    mp2float                truespeech
bethsoftvid             mp3                     tscc
bfi                     mp3adu                  tscc2
bink                    mp3adufloat             tta
binkaudio_dct           mp3float                twinvq
binkaudio_rdft          mp3on4                  txd
bintext                 mp3on4float             ulti
bitpacked               mpc7                    utvideo
bmp                     mpc8                    v210
bmv_audio               mpeg1_cuvid             v210x
bmv_video               mpeg1video              v308
brender_pix             mpeg2_cuvid             v408
c93                     mpeg2_qsv               v410
cavs                    mpeg2video              vb
ccaption                mpeg4                   vble
cdgraphics              mpeg4_cuvid             vbn
cdtoons                 mpegvideo               vc1
cdxl                    mpl2                    vc1_cuvid
cfhd                    msa1                    vc1_qsv
cinepak                 mscc                    vc1image
clearvideo              msmpeg4v1               vcr1
cljr                    msmpeg4v2               vmdaudio
cllc                    msmpeg4v3               vmdvideo
comfortnoise            msnsiren                vmnc
cook                    msp2                    vorbis
cpia                    msrle                   vp3
cri                     mss1                    vp4
cscd                    mss2                    vp5
cyuv                    msvideo1                vp6
dca                     mszh                    vp6a
dds                     mts2                    vp6f
derf_dpcm               mv30                    vp7
dfa                     mvc1                    vp8
dfpwm                   mvc2                    vp8_cuvid
dirac                   mvdv                    vp8_qsv
dnxhd                   mvha                    vp9
dolby_e                 mwsc                    vp9_cuvid
dpx                     mxpeg                   vp9_qsv
dsd_lsbf                nellymoser              vplayer
dsd_lsbf_planar         notchlc                 vqa
dsd_msbf                nuv                     wavpack
dsd_msbf_planar         on2avc                  wcmv
dsicinaudio             opus                    webp
dsicinvideo             paf_audio               webvtt
dss_sp                  paf_video               wmalossless
dst                     pam                     wmapro
dvaudio                 pbm                     wmav1
dvbsub                  pcm_alaw                wmav2
dvdsub                  pcm_bluray              wmavoice
dvvideo                 pcm_dvd                 wmv1
dxa                     pcm_f16le               wmv2
dxtory                  pcm_f24le               wmv3
dxv                     pcm_f32be               wmv3image
eac3                    pcm_f32le               wnv1
eacmv                   pcm_f64be               wrapped_avframe
eamad                   pcm_f64le               ws_snd1
eatgq                   pcm_lxf                 xan_dpcm
eatgv                   pcm_mulaw               xan_wc3
eatqi                   pcm_s16be               xan_wc4
eightbps                pcm_s16be_planar        xbin
eightsvx_exp            pcm_s16le               xbm
eightsvx_fib            pcm_s16le_planar        xface
escape124               pcm_s24be               xl
escape130               pcm_s24daud             xma1
evrc                    pcm_s24le               xma2
exr                     pcm_s24le_planar        xpm
fastaudio               pcm_s32be               xsub
ffv1                    pcm_s32le               xwd
ffvhuff                 pcm_s32le_planar        y41p
ffwavesynth             pcm_s64be               ylc
fic                     pcm_s64le               yop
fits                    pcm_s8                  yuv4
flac                    pcm_s8_planar           zero12v
flashsv                 pcm_sga                 zerocodec
flashsv2                pcm_u16be               zlib
flic                    pcm_u16le               zmbv
flv                     pcm_u24be
fmvc                    pcm_u24le

Enabled encoders:
a64multi                jpeg2000                pcm_u16be
a64multi5               jpegls                  pcm_u16le
aac                     libaom_av1              pcm_u24be
aac_mf                  libgsm                  pcm_u24le
ac3                     libgsm_ms               pcm_u32be
ac3_fixed               libilbc                 pcm_u32le
ac3_mf                  libjxl                  pcm_u8
adpcm_adx               libmp3lame              pcm_vidc
adpcm_argo              libopencore_amrnb       pcx
adpcm_g722              libopenjpeg             pfm
adpcm_g726              libopus                 pgm
adpcm_g726le            librav1e                pgmyuv
adpcm_ima_alp           libshine                png
adpcm_ima_amv           libspeex                ppm
adpcm_ima_apm           libsvtav1               prores
adpcm_ima_qt            libtheora               prores_aw
adpcm_ima_ssi           libtwolame              prores_ks
adpcm_ima_wav           libvo_amrwbenc          qtrle
adpcm_ima_ws            libvorbis               r10k
adpcm_ms                libvpx_vp8              r210
adpcm_swf               libvpx_vp9              ra_144
adpcm_yamaha            libwebp                 rawvideo
alac                    libwebp_anim            roq
alias_pix               libx264                 roq_dpcm
amv                     libx264rgb              rpza
apng                    libx265                 rv10
aptx                    libxavs2                rv20
aptx_hd                 libxvid                 s302m
ass                     ljpeg                   sbc
asv1                    magicyuv                sgi
asv2                    mjpeg                   smc
avrp                    mjpeg_qsv               snow
avui                    mlp                     sonic
ayuv                    movtext                 sonic_ls
bitpacked               mp2                     speedhq
bmp                     mp2fixed                srt
cfhd                    mp3_mf                  ssa
cinepak                 mpeg1video              subrip
cljr                    mpeg2_qsv               sunrast
comfortnoise            mpeg2video              svq1
dca                     mpeg4                   targa
dfpwm                   msmpeg4v2               text
dnxhd                   msmpeg4v3               tiff
dpx                     msvideo1                truehd
dvbsub                  nellymoser              tta
dvdsub                  opus                    ttml
dvvideo                 pam                     utvideo
eac3                    pbm                     v210
exr                     pcm_alaw                v308
ffv1                    pcm_bluray              v408
ffvhuff                 pcm_dvd                 v410
fits                    pcm_f32be               vbn
flac                    pcm_f32le               vc2
flashsv                 pcm_f64be               vorbis
flashsv2                pcm_f64le               vp9_qsv
flv                     pcm_mulaw               wavpack
g723_1                  pcm_s16be               webvtt
gif                     pcm_s16be_planar        wmav1
h261                    pcm_s16le               wmav2
h263                    pcm_s16le_planar        wmv1
h263p                   pcm_s24be               wmv2
h264_amf                pcm_s24daud             wrapped_avframe
h264_mf                 pcm_s24le               xbm
h264_nvenc              pcm_s24le_planar        xface
h264_qsv                pcm_s32be               xsub
hap                     pcm_s32le               xwd
hevc_amf                pcm_s32le_planar        y41p
hevc_mf                 pcm_s64be               yuv4
hevc_nvenc              pcm_s64le               zlib
hevc_qsv                pcm_s8                  zmbv
huffyuv                 pcm_s8_planar

Enabled hwaccels:
av1_d3d11va             hevc_nvdec              vc1_nvdec
av1_d3d11va2            mjpeg_nvdec             vp8_nvdec
av1_dxva2               mpeg1_nvdec             vp9_d3d11va
av1_nvdec               mpeg2_d3d11va           vp9_d3d11va2
h264_d3d11va            mpeg2_d3d11va2          vp9_dxva2
h264_d3d11va2           mpeg2_dxva2             vp9_nvdec
h264_dxva2              mpeg2_nvdec             wmv3_d3d11va
h264_nvdec              mpeg4_nvdec             wmv3_d3d11va2
hevc_d3d11va            vc1_d3d11va             wmv3_dxva2
hevc_d3d11va2           vc1_d3d11va2            wmv3_nvdec
hevc_dxva2              vc1_dxva2

Enabled parsers:
aac                     dvbsub                  mpegvideo
aac_latm                dvd_nav                 opus
ac3                     dvdsub                  png
adx                     flac                    pnm
amr                     g723_1                  rv30
av1                     g729                    rv40
avs2                    gif                     sbc
avs3                    gsm                     sipr
bmp                     h261                    tak
cavsvideo               h263                    vc1
cook                    h264                    vorbis
cri                     hevc                    vp3
dca                     ipu                     vp8
dirac                   jpeg2000                vp9
dnxhd                   mjpeg                   webp
dolby_e                 mlp                     xbm
dpx                     mpeg4video              xma
dvaudio                 mpegaudio

Enabled demuxers:
aa                      ico                     pcm_f64be
aac                     idcin                   pcm_f64le
aax                     idf                     pcm_mulaw
ac3                     iff                     pcm_s16be
ace                     ifv                     pcm_s16le
acm                     ilbc                    pcm_s24be
act                     image2                  pcm_s24le
adf                     image2_alias_pix        pcm_s32be
adp                     image2_brender_pix      pcm_s32le
ads                     image2pipe              pcm_s8
adx                     image_bmp_pipe          pcm_u16be
aea                     image_cri_pipe          pcm_u16le
afc                     image_dds_pipe          pcm_u24be
aiff                    image_dpx_pipe          pcm_u24le
aix                     image_exr_pipe          pcm_u32be
alp                     image_gem_pipe          pcm_u32le
amr                     image_gif_pipe          pcm_u8
amrnb                   image_j2k_pipe          pcm_vidc
amrwb                   image_jpeg_pipe         pjs
anm                     image_jpegls_pipe       pmp
apc                     image_jpegxl_pipe       pp_bnk
ape                     image_pam_pipe          pva
apm                     image_pbm_pipe          pvf
apng                    image_pcx_pipe          qcp
aptx                    image_pgm_pipe          r3d
aptx_hd                 image_pgmyuv_pipe       rawvideo
aqtitle                 image_pgx_pipe          realtext
argo_asf                image_photocd_pipe      redspark
argo_brp                image_pictor_pipe       rl2
argo_cvg                image_png_pipe          rm
asf                     image_ppm_pipe          roq
asf_o                   image_psd_pipe          rpl
ass                     image_qdraw_pipe        rsd
ast                     image_sgi_pipe          rso
au                      image_sunrast_pipe      rtp
av1                     image_svg_pipe          rtsp
avi                     image_tiff_pipe         s337m
avisynth                image_vbn_pipe          sami
avr                     image_webp_pipe         sap
avs                     image_xbm_pipe          sbc
avs2                    image_xpm_pipe          sbg
avs3                    image_xwd_pipe          scc
bethsoftvid             imf                     scd
bfi                     ingenient               sdp
bfstm                   ipmovie                 sdr2
bink                    ipu                     sds
binka                   ircam                   sdx
bintext                 iss                     segafilm
bit                     iv8                     ser
bitpacked               ivf                     sga
bmv                     ivr                     shorten
boa                     jacosub                 siff
brstm                   jv                      simbiosis_imx
c93                     kux                     sln
caf                     kvag                    smacker
cavsvideo               libgme                  smjpeg
cdg                     libmodplug              smush
cdxl                    libopenmpt              sol
cine                    live_flv                sox
codec2                  lmlm4                   spdif
codec2raw               loas                    srt
concat                  lrc                     stl
dash                    luodat                  str
data                    lvf                     subviewer
daud                    lxf                     subviewer1
dcstr                   m4v                     sup
derf                    matroska                svag
dfa                     mca                     svs
dfpwm                   mcc                     swf
dhav                    mgsts                   tak
dirac                   microdvd                tedcaptions
dnxhd                   mjpeg                   thp
dsf                     mjpeg_2000              threedostr
dsicin                  mlp                     tiertexseq
dss                     mlv                     tmv
dts                     mm                      truehd
dtshd                   mmf                     tta
dv                      mods                    tty
dvbsub                  moflex                  txd
dvbtxt                  mov                     ty
dxa                     mp3                     v210
ea                      mpc                     v210x
ea_cdata                mpc8                    vag
eac3                    mpegps                  vc1
epaf                    mpegts                  vc1t
ffmetadata              mpegtsraw               vividas
filmstrip               mpegvideo               vivo
fits                    mpjpeg                  vmd
flac                    mpl2                    vobsub
flic                    mpsub                   voc
flv                     msf                     vpk
fourxm                  msnwc_tcp               vplayer
frm                     msp                     vqf
fsb                     mtaf                    w64
fwse                    mtv                     wav
g722                    musx                    wc3
g723_1                  mv                      webm_dash_manifest
g726                    mvi                     webvtt
g726le                  mxf                     wsaud
g729                    mxg                     wsd
gdv                     nc                      wsvqa
genh                    nistsphere              wtv
gif                     nsp                     wv
gsm                     nsv                     wve
gxf                     nut                     xa
h261                    nuv                     xbin
h263                    obu                     xmv
h264                    ogg                     xvag
hca                     oma                     xwma
hcom                    paf                     yop
hevc                    pcm_alaw                yuv4mpegpipe
hls                     pcm_f32be
hnm                     pcm_f32le

Enabled muxers:
a64                     h263                    pcm_s16le
ac3                     h264                    pcm_s24be
adts                    hash                    pcm_s24le
adx                     hds                     pcm_s32be
aiff                    hevc                    pcm_s32le
alp                     hls                     pcm_s8
amr                     ico                     pcm_u16be
amv                     ilbc                    pcm_u16le
apm                     image2                  pcm_u24be
apng                    image2pipe              pcm_u24le
aptx                    ipod                    pcm_u32be
aptx_hd                 ircam                   pcm_u32le
argo_asf                ismv                    pcm_u8
argo_cvg                ivf                     pcm_vidc
asf                     jacosub                 psp
asf_stream              kvag                    rawvideo
ass                     latm                    rm
ast                     lrc                     roq
au                      m4v                     rso
avi                     matroska                rtp
avm2                    matroska_audio          rtp_mpegts
avs2                    md5                     rtsp
avs3                    microdvd                sap
bit                     mjpeg                   sbc
caf                     mkvtimestamp_v2         scc
cavsvideo               mlp                     segafilm
chromaprint             mmf                     segment
codec2                  mov                     smjpeg
codec2raw               mp2                     smoothstreaming
crc                     mp3                     sox
dash                    mp4                     spdif
data                    mpeg1system             spx
daud                    mpeg1vcd                srt
dfpwm                   mpeg1video              stream_segment
dirac                   mpeg2dvd                streamhash
dnxhd                   mpeg2svcd               sup
dts                     mpeg2video              swf
dv                      mpeg2vob                tee
eac3                    mpegts                  tg2
f4v                     mpjpeg                  tgp
ffmetadata              mxf                     truehd
fifo                    mxf_d10                 tta
fifo_test               mxf_opatom              ttml
filmstrip               null                    uncodedframecrc
fits                    nut                     vc1
flac                    obu                     vc1t
flv                     oga                     voc
framecrc                ogg                     w64
framehash               ogv                     wav
framemd5                oma                     webm
g722                    opus                    webm_chunk
g723_1                  pcm_alaw                webm_dash_manifest
g726                    pcm_f32be               webp
g726le                  pcm_f32le               webvtt
gif                     pcm_f64be               wsaud
gsm                     pcm_f64le               wtv
gxf                     pcm_mulaw               wv
h261                    pcm_s16be               yuv4mpegpipe

Enabled protocols:
async                   httpproxy               rtmpe
bluray                  https                   rtmps
cache                   icecast                 rtmpt
concat                  ipfs                    rtmpte
concatf                 ipns                    rtmpts
crypto                  librist                 rtp
data                    libsrt                  srtp
ffrtmpcrypt             libssh                  subfile
ffrtmphttp              libzmq                  tcp
file                    md5                     tee
ftp                     mmsh                    tls
gopher                  mmst                    udp
gophers                 pipe                    udplite
hls                     prompeg
http                    rtmp

Enabled filters:
abench                  decimate                owdenoise
abitscope               deconvolve              pad
acompressor             dedot                   pad_opencl
acontrast               deesser                 pal100bars
acopy                   deflate                 pal75bars
acrossfade              deflicker               palettegen
acrossover              deinterlace_qsv         paletteuse
acrusher                dejudder                pan
acue                    delogo                  perms
addroi                  derain                  perspective
adeclick                deshake                 phase
adeclip                 deshake_opencl          photosensitivity
adecorrelate            despill                 pixdesctest
adelay                  detelecine              pixelize
adenorm                 dialoguenhance          pixscope
aderivative             dilation                pp
adrawgraph              dilation_opencl         pp7
adynamicequalizer       displace                premultiply
adynamicsmooth          dnn_classify            prewitt
aecho                   dnn_detect              prewitt_opencl
aemphasis               dnn_processing          program_opencl
aeval                   doubleweave             pseudocolor
aevalsrc                drawbox                 psnr
aexciter                drawgraph               pullup
afade                   drawgrid                qp
afftdn                  drawtext                random
afftfilt                drmeter                 readeia608
afifo                   dynaudnorm              readvitc
afir                    earwax                  realtime
afirsrc                 ebur128                 remap
aformat                 edgedetect              removegrain
afreqshift              elbg                    removelogo
afwtdn                  entropy                 repeatfields
agate                   epx                     replaygain
agraphmonitor           eq                      reverse
ahistogram              equalizer               rgbashift
aiir                    erosion                 rgbtestsrc
aintegral               erosion_opencl          roberts
ainterleave             estdif                  roberts_opencl
alatency                exposure                rotate
alimiter                extractplanes           rubberband
allpass                 extrastereo             sab
allrgb                  fade                    scale
allyuv                  feedback                scale2ref
aloop                   fftdnoiz                scale_cuda
alphaextract            fftfilt                 scale_qsv
alphamerge              field                   scale_vulkan
amerge                  fieldhint               scdet
ametadata               fieldmatch              scharr
amix                    fieldorder              scroll
amovie                  fifo                    segment
amplify                 fillborders             select
amultiply               find_rect               selectivecolor
anequalizer             firequalizer            sendcmd
anlmdn                  flanger                 separatefields
anlmf                   flip_vulkan             setdar
anlms                   flite                   setfield
anoisesrc               floodfill               setparams
anull                   format                  setpts
anullsink               fps                     setrange
anullsrc                framepack               setsar
apad                    framerate               settb
aperms                  framestep               shear
aphasemeter             freezedetect            showcqt
aphaser                 freezeframes            showfreqs
aphaseshift             frei0r                  showinfo
apsyclip                frei0r_src              showpalette
apulsator               fspp                    showspatial
arealtime               gblur                   showspectrum
aresample               gblur_vulkan            showspectrumpic
areverse                geq                     showvolume
arnndn                  gradfun                 showwaves
asdr                    gradients               showwavespic
asegment                graphmonitor            shuffleframes
aselect                 grayworld               shufflepixels
asendcmd                greyedge                shuffleplanes
asetnsamples            guided                  sidechaincompress
asetpts                 haas                    sidechaingate
asetrate                haldclut                sidedata
asettb                  haldclutsrc             sierpinski
ashowinfo               hdcd                    signalstats
asidedata               headphone               signature
asoftclip               hflip                   silencedetect
aspectralstats          hflip_vulkan            silenceremove
asplit                  highpass                sinc
ass                     highshelf               sine
astats                  hilbert                 siti
astreamselect           histeq                  smartblur
asubboost               histogram               smptebars
asubcut                 hqdn3d                  smptehdbars
asupercut               hqx                     sobel
asuperpass              hstack                  sobel_opencl
asuperstop              hsvhold                 sofalizer
atadenoise              hsvkey                  spectrumsynth
atempo                  hue                     speechnorm
atilt                   huesaturation           split
atrim                   hwdownload              spp
avectorscope            hwmap                   sr
avgblur                 hwupload                ssim
avgblur_opencl          hwupload_cuda           stereo3d
avgblur_vulkan          hysteresis              stereotools
avsynctest              identity                stereowiden
axcorrelate             idet                    streamselect
azmq                    il                      subtitles
bandpass                inflate                 super2xsai
bandreject              interlace               superequalizer
bass                    interleave              surround
bbox                    join                    swaprect
bench                   kerndeint               swapuv
bilateral               kirsch                  tblend
biquad                  ladspa                  telecine
bitplanenoise           lagfun                  testsrc
blackdetect             latency                 testsrc2
blackframe              lenscorrection          thistogram
blend                   lensfun                 threshold
blend_vulkan            libplacebo              thumbnail
blurdetect              libvmaf                 thumbnail_cuda
bm3d                    life                    tile
boxblur                 limitdiff               tinterlace
boxblur_opencl          limiter                 tlut2
bs2b                    loop                    tmedian
bwdif                   loudnorm                tmidequalizer
cas                     lowpass                 tmix
cellauto                lowshelf                tonemap
channelmap              lumakey                 tonemap_opencl
channelsplit            lut                     tpad
chorus                  lut1d                   transpose
chromaber_vulkan        lut2                    transpose_opencl
chromahold              lut3d                   transpose_vulkan
chromakey               lutrgb                  treble
chromanr                lutyuv                  tremolo
chromashift             mandelbrot              trim
ciescope                maskedclamp             unpremultiply
codecview               maskedmax               unsharp
color                   maskedmerge             unsharp_opencl
colorbalance            maskedmin               untile
colorchannelmixer       maskedthreshold         v360
colorchart              maskfun                 vaguedenoiser
colorcontrast           mcompand                varblur
colorcorrect            median                  vectorscope
colorhold               mergeplanes             vflip
colorize                mestimate               vflip_vulkan
colorkey                metadata                vfrdet
colorkey_opencl         midequalizer            vibrance
colorlevels             minterpolate            vibrato
colormap                mix                     vidstabdetect
colormatrix             monochrome              vidstabtransform
colorspace              morpho                  vif
colorspectrum           movie                   vignette
colortemperature        mpdecimate              vmafmotion
compand                 mptestsrc               volume
compensationdelay       msad                    volumedetect
concat                  multiply                vpp_qsv
convolution             negate                  vstack
convolution_opencl      nlmeans                 w3fdif
convolve                nlmeans_opencl          waveform
copy                    nnedi                   weave
cover_rect              noformat                xbr
crop                    noise                   xcorrelate
cropdetect              normalize               xfade
crossfeed               null                    xfade_opencl
crystalizer             nullsink                xmedian
cue                     nullsrc                 xstack
curves                  openclsrc               yadif
datascope               oscilloscope            yadif_cuda
dblur                   overlay                 yaepblur
dcshift                 overlay_cuda            yuvtestsrc
dctdnoiz                overlay_opencl          zmq
deband                  overlay_qsv             zoompan
deblock                 overlay_vulkan          zscale

Enabled bsfs:
aac_adtstoasc           h264_redundant_pps      opus_metadata
av1_frame_merge         hapqa_extract           pcm_rechunk
av1_frame_split         hevc_metadata           pgs_frame_merge
av1_metadata            hevc_mp4toannexb        prores_metadata
chomp                   imx_dump_header         remove_extradata
dca_core                mjpeg2jpeg              setts
dump_extradata          mjpega_dump_header      text2movsub
dv_error_marker         mov2textsub             trace_headers
eac3_core               mp3_header_decompress   truehd_core
extract_extradata       mpeg2_metadata          vp9_metadata
filter_units            mpeg4_unpack_bframes    vp9_raw_reorder
h264_metadata           noise                   vp9_superframe
h264_mp4toannexb        null                    vp9_superframe_split

Enabled indevs:
dshow                   lavfi                   vfwcap
gdigrab                 libcdio

Enabled outdevs:
caca                    sdl2
