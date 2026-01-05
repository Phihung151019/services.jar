.class public final Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mDisplayChangedWithoutRestart:Z

.field public mIsDesktopDensityCompatOverride:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method
