.class public final Lcom/android/server/wm/CoverLauncherAppCompatConfiguration$PresetManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDeviceConfig:Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;

    invoke-direct {v0, p1}, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object v0, p0, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration$PresetManager;->mDeviceConfig:Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;

    return-void
.end method
