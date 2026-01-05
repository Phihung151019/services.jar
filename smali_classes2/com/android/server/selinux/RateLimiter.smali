.class public final Lcom/android/server/selinux/RateLimiter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mNextPermit:Ljava/time/Instant;

.field public final mWindow:Ljava/time/Duration;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    iput-object v0, p0, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    iput-object p1, p0, Lcom/android/server/selinux/RateLimiter;->mClock:Lcom/android/internal/os/Clock;

    iput-object p2, p0, Lcom/android/server/selinux/RateLimiter;->mWindow:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Ljava/time/Duration;)V
    .locals 1

    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, v0, p1}, Lcom/android/server/selinux/RateLimiter;-><init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;)V

    return-void
.end method
