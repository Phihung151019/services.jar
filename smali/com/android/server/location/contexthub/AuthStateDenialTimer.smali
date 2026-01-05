.class public final Lcom/android/server/location/contexthub/AuthStateDenialTimer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final TIMEOUT_MS:J


# instance fields
.field public mCancelled:Z

.field public final mClient:Lcom/android/server/location/contexthub/ContextHubClientBroker;

.field public final mHandler:Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;

.field public final mNanoAppId:J

.field public mStopTimeInFuture:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLandroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mCancelled:Z

    iput-object p1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mClient:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    iput-wide p2, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mNanoAppId:J

    new-instance p1, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;

    invoke-direct {p1, p0, p4}, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;-><init>(Lcom/android/server/location/contexthub/AuthStateDenialTimer;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mHandler:Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;

    return-void
.end method
