.class public final synthetic Lcom/android/server/location/gnss/GnssNmeaProvider$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssNmeaProvider$1;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssNmeaProvider$1;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssNmeaProvider$1;

    iput-wide p2, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssNmeaProvider$1;

    iget-wide v1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider$1$$ExternalSyntheticLambda0;->f$1:J

    check-cast p1, Landroid/location/IGnssNmeaListener;

    iget-object p0, v0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;->mNmea:Ljava/lang/String;

    invoke-interface {p1, v1, v2, p0}, Landroid/location/IGnssNmeaListener;->onNmeaReceived(JLjava/lang/String;)V

    return-void
.end method
