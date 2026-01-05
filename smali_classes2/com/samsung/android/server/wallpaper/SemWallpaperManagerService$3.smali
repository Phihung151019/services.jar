.class public final Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;
.super Landroid/app/HomeVisibilityListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-direct {p0}, Landroid/app/HomeVisibilityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHomeVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mHandler:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$4;

    new-instance v1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
