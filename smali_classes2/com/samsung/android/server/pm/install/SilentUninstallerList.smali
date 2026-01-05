.class public final Lcom/samsung/android/server/pm/install/SilentUninstallerList;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final allowedSilentUninstallers:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 18

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v16, "com.sec.android.app.vepreload"

    const-string/jumbo v17, "com.sec.android.app.launcher"

    const-string/jumbo v1, "com.samsung.android.sm.devicesecurity"

    const-string/jumbo v2, "com.samsung.android.sm.devicesecurity.tcm"

    const-string/jumbo v3, "com.samsung.android.asksmanager"

    const-string/jumbo v4, "com.samsung.android.lool"

    const-string/jumbo v5, "com.samsung.android.sm_cn"

    const-string/jumbo v6, "com.ws.dm"

    const-string/jumbo v7, "com.samsung.knox.securefolder"

    const-string/jumbo v8, "com.android.managedprovisioning"

    const-string/jumbo v9, "com.samsung.android.app.watchmanagerstub"

    const-string/jumbo v10, "com.sec.android.AutoPreconfig"

    const-string/jumbo v11, "com.sec.android.app.myfiles"

    const-string/jumbo v12, "com.sec.android.app.samsungapps"

    const-string/jumbo v13, "com.samsung.android.cidmanager"

    const-string/jumbo v14, "com.sec.android.app.camera"

    const-string/jumbo v15, "com.sec.android.mimage.photoretouching"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/pm/install/SilentUninstallerList;->allowedSilentUninstallers:Ljava/util/List;

    return-void
.end method
