.class public Lcom/android/server/am/SettingsToPropertiesMapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final sDeviceConfigAconfigScopes:[Ljava/lang/String;

.field static final sDeviceConfigScopes:[Ljava/lang/String;

.field static final sGlobalSettings:[Ljava/lang/String;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDeviceConfigScopes:[Ljava/lang/String;

.field public final mGlobalSettings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 170

    const-string/jumbo v0, "native_flags_health_check_enabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    const-string/jumbo v29, "hdmi_control"

    const-string/jumbo v30, "tethering_u_or_later_native"

    const-string/jumbo v1, "activity_manager_native_boot"

    const-string/jumbo v2, "camera_native"

    const-string/jumbo v3, "configuration"

    const-string/jumbo v4, "connectivity"

    const-string/jumbo v5, "edgetpu_native"

    const-string/jumbo v6, "input_native_boot"

    const-string/jumbo v7, "intelligence_content_suggestions"

    const-string/jumbo v8, "lmkd_native"

    const-string/jumbo v9, "media_native"

    const-string/jumbo v10, "mglru_native"

    const-string/jumbo v11, "mmd_native"

    const-string/jumbo v12, "netd_native"

    const-string/jumbo v13, "nnapi_native"

    const-string/jumbo v14, "profcollect_native_boot"

    const-string/jumbo v15, "remote_key_provisioning_native"

    const-string/jumbo v16, "runtime_native"

    const-string/jumbo v17, "runtime_native_boot"

    const-string/jumbo v18, "statsd_native"

    const-string/jumbo v19, "statsd_native_boot"

    const-string/jumbo v20, "storage_native_boot"

    const-string/jumbo v21, "surface_flinger_native_boot"

    const-string/jumbo v22, "swcodec_native"

    const-string/jumbo v23, "vendor_system_native"

    const-string/jumbo v24, "vendor_system_native_boot"

    const-string/jumbo v25, "virtualization_framework_native"

    const-string/jumbo v26, "window_manager_native_boot"

    const-string/jumbo v27, "memory_safety_native_boot"

    const-string/jumbo v28, "memory_safety_native"

    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    const-string/jumbo v168, "windowing_frontend"

    const-string/jumbo v169, "xr"

    const-string/jumbo v1, "tv_os"

    const-string/jumbo v2, "aaos_carframework_triage"

    const-string/jumbo v3, "aaos_performance_triage"

    const-string/jumbo v4, "aaos_input_triage"

    const-string/jumbo v5, "aaos_user_triage"

    const-string/jumbo v6, "aaos_window_triage"

    const-string/jumbo v7, "aaos_audio_triage"

    const-string/jumbo v8, "aaos_power_triage"

    const-string/jumbo v9, "aaos_storage_triage"

    const-string/jumbo v10, "aaos_sdv"

    const-string/jumbo v11, "aaos_vac_triage"

    const-string/jumbo v12, "accessibility"

    const-string/jumbo v13, "android_core_networking"

    const-string/jumbo v14, "android_health_services"

    const-string/jumbo v15, "android_sdk"

    const-string/jumbo v16, "android_kernel"

    const-string/jumbo v17, "aoc"

    const-string/jumbo v18, "app_widgets"

    const-string/jumbo v19, "arc_next"

    const-string/jumbo v20, "art_cloud"

    const-string/jumbo v21, "art_mainline"

    const-string/jumbo v22, "art_performance"

    const-string/jumbo v23, "attack_tools"

    const-string/jumbo v24, "automotive_cast"

    const-string/jumbo v25, "avic"

    const-string/jumbo v26, "desktop_firmware"

    const-string/jumbo v27, "biometrics"

    const-string/jumbo v28, "biometrics_framework"

    const-string/jumbo v29, "biometrics_integration"

    const-string/jumbo v30, "bluetooth"

    const-string/jumbo v31, "brownout_mitigation_audio"

    const-string/jumbo v32, "brownout_mitigation_modem"

    const-string/jumbo v33, "build"

    const-string/jumbo v34, "camera_hal"

    const-string/jumbo v35, "camera_platform"

    const-string/jumbo v36, "car_framework"

    const-string/jumbo v37, "car_perception"

    const-string/jumbo v38, "car_security"

    const-string/jumbo v39, "car_telemetry"

    const-string/jumbo v40, "codec_fwk"

    const-string/jumbo v41, "companion"

    const-string/jumbo v42, "com_android_adbd"

    const-string/jumbo v43, "content_protection"

    const-string/jumbo v44, "context_hub"

    const-string/jumbo v45, "core_experiments_team_internal"

    const-string/jumbo v46, "core_graphics"

    const-string/jumbo v47, "core_libraries"

    const-string/jumbo v48, "crumpet"

    const-string/jumbo v49, "dck_framework"

    const-string/jumbo v50, "desktop_apps"

    const-string/jumbo v51, "desktop_audio"

    const-string/jumbo v52, "desktop_better_together"

    const-string/jumbo v53, "desktop_bsp"

    const-string/jumbo v54, "desktop_camera"

    const-string/jumbo v55, "desktop_connectivity"

    const-string/jumbo v56, "desktop_dev_experience"

    const-string/jumbo v57, "desktop_display"

    const-string/jumbo v58, "desktop_commercial"

    const-string/jumbo v59, "desktop_firmware"

    const-string/jumbo v60, "desktop_graphics"

    const-string/jumbo v61, "desktop_hwsec"

    const-string/jumbo v62, "desktop_input"

    const-string/jumbo v63, "desktop_kernel"

    const-string/jumbo v64, "desktop_ml"

    const-string/jumbo v65, "desktop_networking"

    const-string/jumbo v66, "desktop_serviceability"

    const-string/jumbo v67, "desktop_oobe"

    const-string/jumbo v68, "desktop_peripherals"

    const-string/jumbo v69, "desktop_personalization"

    const-string/jumbo v70, "desktop_pnp"

    const-string/jumbo v71, "desktop_privacy"

    const-string/jumbo v72, "desktop_release"

    const-string/jumbo v73, "desktop_security"

    const-string/jumbo v74, "desktop_stats"

    const-string/jumbo v75, "desktop_sysui"

    const-string/jumbo v76, "desktop_users_and_accounts"

    const-string/jumbo v77, "desktop_video"

    const-string/jumbo v78, "desktop_wifi"

    const-string/jumbo v79, "devoptions_settings"

    const-string/jumbo v80, "game"

    const-string/jumbo v81, "gpu"

    const-string/jumbo v82, "haptics"

    const-string/jumbo v83, "hardware_backed_security_mainline"

    const-string/jumbo v84, "input"

    const-string/jumbo v85, "incremental"

    const-string/jumbo v86, "llvm_and_toolchains"

    const-string/jumbo v87, "lse_desktop_experience"

    const-string/jumbo v88, "machine_learning"

    const-string/jumbo v89, "mainline_modularization"

    const-string/jumbo v90, "mainline_sdk"

    const-string/jumbo v91, "make_pixel_haptics"

    const-string/jumbo v92, "media_audio"

    const-string/jumbo v93, "media_drm"

    const-string/jumbo v94, "media_projection"

    const-string/jumbo v95, "media_reliability"

    const-string/jumbo v96, "media_solutions"

    const-string/jumbo v97, "media_tv"

    const-string/jumbo v98, "microxr"

    const-string/jumbo v99, "nearby"

    const-string/jumbo v100, "nfc"

    const-string/jumbo v101, "pdf_viewer"

    const-string/jumbo v102, "perfetto"

    const-string/jumbo v103, "pixel_audio_android"

    const-string/jumbo v104, "pixel_biometrics_face"

    const-string/jumbo v105, "pixel_bluetooth"

    const-string/jumbo v106, "pixel_connectivity_gps"

    const-string/jumbo v107, "pixel_continuity"

    const-string/jumbo v108, "pixel_display"

    const-string/jumbo v109, "pixel_fingerprint"

    const-string/jumbo v110, "pixel_gsc"

    const-string/jumbo v111, "pixel_perf"

    const-string/jumbo v112, "pixel_sensai"

    const-string/jumbo v113, "pixel_sensors"

    const-string/jumbo v114, "pixel_state_server"

    const-string/jumbo v115, "pixel_system_sw_video"

    const-string/jumbo v116, "pixel_video_sw"

    const-string/jumbo v117, "pixel_vpn"

    const-string/jumbo v118, "pixel_watch"

    const-string/jumbo v119, "pixel_watch_debug_trace"

    const-string/jumbo v120, "pixel_watch_watchfaces"

    const-string/jumbo v121, "pixel_wifi"

    const-string/jumbo v122, "platform_compat"

    const-string/jumbo v123, "platform_security"

    const-string/jumbo v124, "pmw"

    const-string/jumbo v125, "power"

    const-string/jumbo v126, "preload_safety"

    const-string/jumbo v127, "printing"

    const-string/jumbo v128, "privacy_infra_policy"

    const-string/jumbo v129, "psap_ai"

    const-string/jumbo v130, "ravenwood"

    const-string/jumbo v131, "resource_manager"

    const-string/jumbo v132, "responsible_apis"

    const-string/jumbo v133, "rust"

    const-string/jumbo v134, "safety_center"

    const-string/jumbo v135, "sensors"

    const-string/jumbo v136, "spoon"

    const-string/jumbo v137, "stability"

    const-string/jumbo v138, "statsd"

    const-string/jumbo v139, "system_performance"

    const-string/jumbo v140, "system_sw_battery"

    const-string/jumbo v141, "system_sw_touch"

    const-string/jumbo v142, "system_sw_usb"

    const-string/jumbo v143, "test_suites"

    const-string/jumbo v144, "text"

    const-string/jumbo v145, "threadnetwork"

    const-string/jumbo v146, "treble"

    const-string/jumbo v147, "tv_os_media"

    const-string/jumbo v148, "tv_system_ui"

    const-string/jumbo v149, "usb"

    const-string/jumbo v150, "vibrator"

    const-string/jumbo v151, "virtual_devices"

    const-string/jumbo v152, "virtualization"

    const-string/jumbo v153, "wallet_integration"

    const-string/jumbo v154, "wear_calling_messaging"

    const-string/jumbo v155, "wear_connectivity"

    const-string/jumbo v156, "wear_esim_carriers"

    const-string/jumbo v157, "wear_frameworks"

    const-string/jumbo v158, "wear_media"

    const-string/jumbo v159, "wear_offload"

    const-string/jumbo v160, "wear_security"

    const-string/jumbo v161, "wear_system_health"

    const-string/jumbo v162, "wear_systems"

    const-string/jumbo v163, "wear_sysui"

    const-string/jumbo v164, "wear_system_managed_surfaces"

    const-string/jumbo v165, "wear_watchfaces"

    const-string/jumbo v166, "web_apps_on_chromeos_and_android"

    const-string/jumbo v167, "window_surfaces"

    filled-new-array/range {v1 .. v169}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigAconfigScopes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    return-void
.end method

.method public static getResetFlagsFileContent()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/server_configurable_flags/reset_flags"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "failed to read file /data/server_configurable_flags/reset_flags"

    invoke-static {v1, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public static logErr(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string/jumbo v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_0

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static logErr(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string/jumbo v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "persist.device_config."

    const-string v1, "."

    invoke-static {v0, p0, v1, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "^[\\w\\.\\-@:]*$"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ".."

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseAndLogAconfigdReturn(Landroid/util/proto/ProtoInputStream;)V
    .locals 5

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const-string/jumbo v0, "invalid message type, expect storage return message"

    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide v2, 0x20b00000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const-string/jumbo v4, "SettingsToPropertiesMapper"

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "invalid message type, expecting only flag override return or error message"

    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-wide v0, 0x10900000008L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "override request failed: "

    invoke-static {v1, v0, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "successfully handled override requests"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v0, 0x10b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    :cond_3
    :goto_1
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static sendAconfigdRequests(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)Landroid/util/proto/ProtoInputStream;
    .locals 9

    const-string/jumbo v0, "flag override requests sent to "

    const-string v1, " socket"

    const-string/jumbo v2, "SettingsToPropertiesMapper"

    const-string/jumbo v3, "received "

    const-string/jumbo v4, "connected to "

    new-instance v5, Landroid/net/LocalSocket;

    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Landroid/net/LocalSocketAddress;

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v7, p1, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v5, v7}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v5, p0

    const/4 v7, 0x0

    invoke-virtual {v4, p0, v7, v5}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes back from "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "failed to read requests return from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v6

    :catch_1
    move-exception p0

    const-string/jumbo v0, "failed to send requests to "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v6

    :catch_2
    move-exception p0

    const-string/jumbo p1, "failed to get local socket iostreams"

    invoke-static {p0, p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v6

    :catch_3
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "failed to connect to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v6
.end method

.method public static sendAconfigdRequests(Landroid/util/proto/ProtoOutputStream;)V
    .locals 2

    const-string/jumbo v0, "failed to parse aconfigd return"

    const-string/jumbo v1, "aconfigd_system"

    invoke-static {p0, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->sendAconfigdRequests(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)Landroid/util/proto/ProtoInputStream;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->parseAndLogAconfigdReturn(Landroid/util/proto/ProtoInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "aconfigd_mainline"

    invoke-static {p0, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->sendAconfigdRequests(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)Landroid/util/proto/ProtoInputStream;

    move-result-object p0

    :try_start_1
    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->parseAndLogAconfigdReturn(Landroid/util/proto/ProtoInputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {p0, v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static setLocalOverridesInNewStorage(Landroid/provider/DeviceConfig$Properties;)V
    .locals 10

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-eq v6, v8, :cond_4

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_2

    const-string/jumbo v5, "invalid flag name: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-nez v5, :cond_3

    invoke-static {v0, v7, v4, v9}, Lcom/android/server/am/SettingsToPropertiesMapper;->writeFlagOverrideRemovalRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    invoke-static {v0, v7, v4, v5, v9}, Lcom/android/server/am/SettingsToPropertiesMapper;->writeFlagOverrideRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const-string/jumbo v5, "invalid local flag override: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    return-void

    :cond_6
    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->sendAconfigdRequests(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5c

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exceeds system property max length."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unable to set property "

    const-string v2, " value \'"

    const-string v3, "\'"

    invoke-static {v1, p0, v2, p1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static stageFlagsInNewStorage(Landroid/provider/DeviceConfig$Properties;)V
    .locals 9

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v6, v8, :cond_4

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_3

    const-string/jumbo v5, "invalid flag name: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v7, v4, v5, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->writeFlagOverrideRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-string/jumbo v5, "invalid local flag override: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    return-void

    :cond_6
    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->sendAconfigdRequests(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public static writeFlagOverrideRemovalRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const-wide v0, 0x20b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000005L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10900000003L

    invoke-virtual {p0, v4, v5, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide p1, 0x10800000001L

    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const-wide p2, 0x10e00000004L

    invoke-virtual {p0, p2, p3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeFlagOverrideRequest(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const-wide v0, 0x20b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v4, v5, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide p1, 0x10900000003L

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    if-eqz p4, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    const-wide p2, 0x10e00000004L

    invoke-virtual {p0, p2, p3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method


# virtual methods
.method public updatePropertiesFromSettings()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "global_settings"

    invoke-static {v6, v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setting uri is null for globalSetting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-nez v6, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "invalid prop name for globalSetting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v7, Lcom/android/server/am/SettingsToPropertiesMapper$1;

    invoke-direct {v7, p0, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper$1;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "device_config.reset_performed"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v5, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;)V

    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    new-instance v0, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v1, "staged"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v1, "device_config_overrides"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
