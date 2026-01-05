.class public final Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAuthenticated:Z

.field public final mError:I

.field public final mLatency:J

.field public final mStartTime:J

.field public final mUser:I

.field public final mVendorError:I


# direct methods
.method public constructor <init>(JJZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mStartTime:J

    iput-wide p3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mLatency:J

    iput-boolean p5, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mAuthenticated:Z

    iput p6, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mError:I

    iput p7, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mVendorError:I

    iput p8, p0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mUser:I

    return-void
.end method
