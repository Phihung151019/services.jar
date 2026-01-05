.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

.field final mH:Landroid/os/Handler;

.field public mIsDozeMode:Z

.field public mIsHlpmMode:Z

.field final mPendingRequestBeforeListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    return-void
.end method
