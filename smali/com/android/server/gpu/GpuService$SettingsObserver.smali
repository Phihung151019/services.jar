.class public final Lcom/android/server/gpu/GpuService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mProdDriverDenylistsUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/gpu/GpuService;


# direct methods
.method public constructor <init>(Lcom/android/server/gpu/GpuService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->this$0:Lcom/android/server/gpu/GpuService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "updatable_driver_production_denylists"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->mProdDriverDenylistsUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->mProdDriverDenylistsUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->this$0:Lcom/android/server/gpu/GpuService;

    const-string/jumbo p2, "game_driver"

    const-string/jumbo v0, "updatable_driver_production_denylists"

    invoke-static {p2, v0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p1, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/server/gpu/GpuService;->parseDenylists(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->setDenylist()V

    :cond_3
    :goto_1
    return-void
.end method
