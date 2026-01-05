.class public final Lcom/android/server/location/gnss/GnssNmeaProvider$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public mNmea:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssNmeaProvider;

.field public final synthetic val$timestamp:J


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssNmeaProvider;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->this$0:Lcom/android/server/location/gnss/GnssNmeaProvider;

    iput-wide p2, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->val$timestamp:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->this$0:Lcom/android/server/location/gnss/GnssNmeaProvider;

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    const/4 v1, 0x1

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/injector/SystemAppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->mNmea:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->this$0:Lcom/android/server/location/gnss/GnssNmeaProvider;

    iget-object v0, p1, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaBuffer:[B

    array-length v1, v0

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssNmeaProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->readNmea([BI)I

    move-result p1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->this$0:Lcom/android/server/location/gnss/GnssNmeaProvider;

    const/4 v2, 0x0

    iget-object v1, v1, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaBuffer:[B

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->mNmea:Ljava/lang/String;

    :cond_0
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->val$timestamp:J

    new-instance p1, Lcom/android/server/location/gnss/GnssNmeaProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/location/gnss/GnssNmeaProvider$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssNmeaProvider$1;J)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
