.class final enum Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final sAppApiMaskToKey:Ljava/util/Map;


# instance fields
.field private adminMapKey:Ljava/lang/String;

.field private mask:I

.field private table:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/4 v1, 0x0

    const-string/jumbo v4, "PackageNameDisabledList"

    const-string/jumbo v3, "PKGNAME_DISABLED_LIST"

    const/4 v2, 0x2

    const-string v5, "APPLICATION"

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/4 v2, 0x1

    const-string/jumbo v5, "PackageNameInstallationBlacklist"

    const-string/jumbo v4, "PKGNAME_INSTALLATION_BLACKLIST"

    const/4 v3, 0x4

    const-string v6, "APPLICATION"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/4 v3, 0x2

    const-string/jumbo v6, "PackageNameInstallationWhitelist"

    const-string/jumbo v5, "PKGNAME_INSTALLATION_WHITELIST"

    const/16 v4, 0x8

    const-string v7, "APPLICATION"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/4 v4, 0x3

    const-string/jumbo v7, "PermissionInstallationBlacklist"

    const-string/jumbo v6, "PERMISSION_INSTALLATION_BLACKLIST"

    const/4 v5, 0x0

    const-string v8, "APPLICATION_PERMISSION"

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/4 v5, 0x4

    const-string/jumbo v8, "SignatureInstallationBlacklist"

    const-string/jumbo v7, "SIGNATURE_INSTALLATION_BLACKLIST"

    const/4 v6, 0x1

    const-string/jumbo v9, "signature"

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/4 v6, 0x5

    const-string/jumbo v9, "SignatureInstallationWhitelist"

    const-string/jumbo v8, "SIGNATURE_INSTALLATION_WHITELIST"

    const/4 v7, 0x2

    const-string/jumbo v10, "signature"

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/4 v7, 0x6

    const-string/jumbo v10, "PackageNameStopBlacklist"

    const-string/jumbo v9, "PKGNAME_STOP_BLACKLIST"

    const/16 v8, 0x10

    const-string v11, "APPLICATION"

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/4 v8, 0x7

    const-string/jumbo v11, "PackageNameStopWhitelist"

    const-string/jumbo v10, "PKGNAME_STOP_WHITELIST"

    const/16 v9, 0x20

    const-string v12, "APPLICATION"

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v9, 0x8

    const-string/jumbo v12, "PackageNameWidgetWhitelist"

    const-string/jumbo v11, "PKGNAME_WIDGET_WHITELIST"

    const/16 v10, 0x80

    const-string v13, "APPLICATION"

    invoke-direct/range {v8 .. v13}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v10, 0x9

    const-string/jumbo v13, "PackageNameWidgetBlacklist"

    const-string/jumbo v12, "PKGNAME_WIDGET_BLACKLIST"

    const/16 v11, 0x40

    const-string v14, "APPLICATION"

    invoke-direct/range {v9 .. v14}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v11, 0xa

    const-string/jumbo v14, "PackageNameNotificationBlacklist"

    const-string/jumbo v13, "PKGNAME_NOTIFICATION_BLACKLIST"

    const/16 v12, 0x100

    const-string v15, "APPLICATION"

    invoke-direct/range {v10 .. v15}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v12, 0xb

    const-string/jumbo v15, "PackageNameNotificationWhitelist"

    const-string/jumbo v14, "PKGNAME_NOTIFICATION_WHITELIST"

    const/16 v13, 0x200

    const-string v16, "APPLICATION"

    invoke-direct/range {v11 .. v16}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v13, 0xc

    const-string/jumbo v16, "PackageNameClearDataBlacklist"

    const-string/jumbo v15, "PKGNAME_CLEARDATA_BLACKLIST"

    const/16 v14, 0x2000

    const-string v17, "APPLICATION"

    invoke-direct/range {v12 .. v17}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v14, 0xd

    const-string/jumbo v17, "PackageNameClearDataWhitelist"

    const-string/jumbo v16, "PKGNAME_CLEARDATA_WHITELIST"

    const/16 v15, 0x4000

    const-string v18, "APPLICATION"

    invoke-direct/range {v13 .. v18}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v15, 0xe

    const-string/jumbo v18, "PackageNameClearCacheBlacklist"

    const-string/jumbo v17, "PKGNAME_CLEARCACHE_BLACKLIST"

    const v16, 0x8000

    const-string v19, "APPLICATION"

    invoke-direct/range {v14 .. v19}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    move-object/from16 v15, v16

    const/16 v16, 0xf

    const-string/jumbo v19, "PackageNameClearCacheWhitelist"

    const-string/jumbo v18, "PKGNAME_CLEARCACHE_WHITELIST"

    const/high16 v17, 0x10000

    const-string v20, "APPLICATION"

    invoke-direct/range {v15 .. v20}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v17, 0x10

    const-string/jumbo v20, "PackageNameStartBlacklist"

    const-string/jumbo v19, "PKGNAME_START_BLACKLIST"

    const/high16 v18, 0x80000

    const-string v21, "APPLICATION"

    invoke-direct/range {v16 .. v21}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v17, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v18, 0x11

    const-string/jumbo v21, "PackageNameStartWhitelist"

    const-string/jumbo v20, "PKGNAME_START_WHITELIST"

    const/16 v19, 0x0

    const-string v22, "INVALID_TABLE"

    invoke-direct/range {v17 .. v22}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v19, 0x12

    const-string/jumbo v22, "PackageNameDisableClipboardBlackList"

    const-string/jumbo v21, "PKGNAME_CLIPBOARD_BLACKLIST"

    const/high16 v20, 0x200000

    const-string v23, "APPLICATION"

    invoke-direct/range {v18 .. v23}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v20, 0x13

    const-string/jumbo v23, "PackageNameDisableClipboardWhitelist"

    const-string/jumbo v22, "PKGNAME_CLIPBOARD_WHITELIST"

    const/high16 v21, 0x400000

    const-string v24, "APPLICATION"

    invoke-direct/range {v19 .. v24}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v20, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v21, 0x14

    const-string/jumbo v24, "PackageNameFocusMonitoringList"

    const-string/jumbo v23, "PKGNAME_FOCUSMONITORING_LIST"

    const/high16 v22, 0x800000

    const-string v25, "APPLICATION"

    invoke-direct/range {v20 .. v25}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v22, 0x15

    const-string/jumbo v25, "PackageNameFocusMonitoringWhiteList"

    const-string/jumbo v24, "PKGNAME_FOCUSMONITORING_WHITELIST"

    const/16 v23, 0x0

    const-string v26, "INVALID_TABLE"

    invoke-direct/range {v21 .. v26}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v23, 0x16

    const-string/jumbo v26, "PackageNameDozeModeWhiteList"

    const-string/jumbo v25, "PKGNAME_DOZEMODE_WHITELIST"

    const/high16 v24, 0x1000000

    const-string v27, "APPLICATION"

    invoke-direct/range {v22 .. v27}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v23, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v24, 0x17

    const-string/jumbo v27, "PackageNameAvrWhitelist"

    const-string/jumbo v26, "PKGNAME_AVR_WHITELIST"

    const/high16 v25, 0x20000000

    const-string v28, "APPLICATION"

    invoke-direct/range {v23 .. v28}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v24, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v25, 0x18

    const-string/jumbo v28, "RevocationCheck"

    const-string/jumbo v27, "PKGNAME_REVOCATION_CHECK"

    const/16 v26, 0x800

    const-string v29, "APPLICATION"

    invoke-direct/range {v24 .. v29}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v25, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v26, 0x19

    const-string/jumbo v29, "OcspCheck"

    const-string/jumbo v28, "PKGNAME_OCSP_CHECK"

    const/16 v27, 0x1000

    const-string v30, "APPLICATION"

    invoke-direct/range {v25 .. v30}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v26, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v27, 0x1a

    const-string/jumbo v30, "PackageNameUpdateWhitelist"

    const-string/jumbo v29, "PKGNAME_UPDATE_WHITELIST"

    const/high16 v28, 0x40000

    const-string v31, "APPLICATION"

    invoke-direct/range {v26 .. v31}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v27, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v28, 0x1b

    const-string/jumbo v31, "PackageNameUpdateBlacklist"

    const-string/jumbo v30, "PKGNAME_UPDATE_BLACKLIST"

    const/high16 v29, 0x20000

    const-string v32, "APPLICATION"

    invoke-direct/range {v27 .. v32}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v28, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v29, 0x1c

    const-string/jumbo v32, "UninstallationBlacklist"

    const-string/jumbo v31, "UNINSTALLATION_BLACKLIST"

    const/16 v30, 0x1

    const-string v33, "APPLICATION"

    invoke-direct/range {v28 .. v33}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v29, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v30, 0x1d

    const-string/jumbo v33, "UninstallationWhitelist"

    const-string/jumbo v32, "UNINSTALLATION_WHITELIST"

    const/16 v31, 0x400

    const-string v34, "APPLICATION"

    invoke-direct/range {v29 .. v34}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v30, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v31, 0x1e

    const-string/jumbo v34, "PackageNameInstallerWhiteList"

    const-string/jumbo v33, "PKGNAME_INSTALLER_WHITELIST"

    const/high16 v32, 0x2000000

    const-string v35, "APPLICATION"

    invoke-direct/range {v30 .. v35}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v32, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    move-object/from16 v31, v32

    const/16 v32, 0x1f

    const-string/jumbo v35, "PackageNameInstallerBlackList"

    const-string/jumbo v34, "PKGNAME_INSTALLER_BLACKLIST"

    const/high16 v33, 0x4000000

    const-string v36, "APPLICATION"

    invoke-direct/range {v31 .. v36}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v32, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v33, 0x20

    const-string/jumbo v36, "PackageNameCameraAllowlist"

    const-string/jumbo v35, "PKGNAME_CAMERA_ALLOWLIST"

    const/high16 v34, 0x40000000    # 2.0f

    const-string v37, "APPLICATION"

    invoke-direct/range {v32 .. v37}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v33, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const/16 v34, 0x21

    const-string/jumbo v37, "SignatureCameraAllowlist"

    const-string/jumbo v36, "SIGNATURE_CAMERA_ALLOWLIST"

    const/16 v35, 0x4

    const-string/jumbo v38, "signature"

    invoke-direct/range {v33 .. v38}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v34, v33

    move-object/from16 v33, v32

    move-object/from16 v32, v31

    move-object/from16 v31, v30

    move-object/from16 v30, v29

    move-object/from16 v29, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v26

    move-object/from16 v26, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    filled-new-array/range {v1 .. v34}, [Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->$VALUES:[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->sAppApiMaskToKey:Ljava/util/Map;

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->values()[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->table:Ljava/lang/String;

    const-string v5, "APPLICATION"

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->sAppApiMaskToKey:Ljava/util/Map;

    iget v5, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->mask:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v3, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->adminMapKey:Ljava/lang/String;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->adminMapKey:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->mask:I

    iput-object p5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->table:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;
    .locals 1

    const-class v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->$VALUES:[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    return-object v0
.end method


# virtual methods
.method public final getAdminMapKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->adminMapKey:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->adminMapKey:Ljava/lang/String;

    return-object p0
.end method
