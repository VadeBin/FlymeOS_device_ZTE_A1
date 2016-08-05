import common
import edify_generator
import os

def InstallBased(info):
    for filename in os.listdir("firmware"):
        if not (filename.find('.img')==-1 and filename.find('.bin')==-1 ):
            data=open(os.path.join(os.getcwd(),"firmware",filename)).read()
            common.ZipWriteStr(info.output_zip, filename, data)
    extra_img_flash = """ui_print("update firmware image...");
assert(package_extract_file("logo.img", "/tmp/logo.img"),
       write_raw_image("/tmp/logo.img", "logo"),
       delete("/tmp/logo.img"));
assert(package_extract_file("lk.bin", "/tmp/uboot.img"),
       write_raw_image("/tmp/uboot.img", "uboot"),
       delete("/tmp/uboot.img"));
assert(package_extract_file("mobicore.bin", "/tmp/tee1.img"),
       write_raw_image("/tmp/tee1.img", "tee1"),
       delete("/tmp/tee1.img"));"""
    info.script.AppendExtra(extra_img_flash);

def FullOTA_InstallEnd(info):
    InstallBased(info)

