.class public Lcom/android/server/selinux/QuotaLimiter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mCurrentWindow:J

.field public mMaxPermits:I

.field public mPermitsGranted:I

.field public final mWindowSize:Ljava/time/Duration;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/selinux/QuotaLimiter;->mClock:Lcom/android/internal/os/Clock;

    iput-object p2, p0, Lcom/android/server/selinux/QuotaLimiter;->mWindowSize:Ljava/time/Duration;

    iput p3, p0, Lcom/android/server/selinux/QuotaLimiter;->mMaxPermits:I

    return-void
.end method
