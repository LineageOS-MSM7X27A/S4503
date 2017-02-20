/bin/cp device/jsr/i6/post_process_props_hook.py build/tools/
chmod  0775 build/tools/post_process_props_hook.py

add_lunch_combo lineage_i6-eng
add_lunch_combo lineage_i6-userdebug
add_lunch_combo lineage_i6-user dist

sh device/jsr/i6/patches/apply.sh
croot

rm -rf out/target/product/i6/obj/PACKAGING/target_files_intermediates
rm -f out/target/product/i6/system/build.prop
rm -f out/target/product/i6/root/default.prop 

# Root
export WITH_SU=true
