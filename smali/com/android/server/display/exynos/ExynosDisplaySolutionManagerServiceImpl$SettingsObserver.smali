.class public final Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$SettingsObserver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$SettingsObserver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->settingChanged()V

    return-void
.end method
