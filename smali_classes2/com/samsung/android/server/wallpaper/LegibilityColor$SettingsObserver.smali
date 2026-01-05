.class public final Lcom/samsung/android/server/wallpaper/LegibilityColor$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wallpaper/LegibilityColor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    move-result v0

    iput-boolean v0, p1, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    return-void
.end method
