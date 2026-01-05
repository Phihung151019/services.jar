.class public final Lcom/android/server/am/LowMemDetector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAvailable:Z

.field public mPressureState:I

.field public final mPressureStateLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$mwaitForPressure(Lcom/android/server/am/LowMemDetector;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->waitForPressure()I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    new-instance v1, Lcom/android/server/am/LowMemDetector$LowMemThread;

    invoke-direct {v1, p0}, Lcom/android/server/am/LowMemDetector$LowMemThread;-><init>(Lcom/android/server/am/LowMemDetector;)V

    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->init()I

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private native init()I
.end method

.method private native waitForPressure()I
.end method
