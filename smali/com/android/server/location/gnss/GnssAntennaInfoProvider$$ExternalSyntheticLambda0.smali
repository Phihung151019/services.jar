.class public final synthetic Lcom/android/server/location/gnss/GnssAntennaInfoProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    check-cast p1, Landroid/location/IGnssAntennaInfoListener;

    invoke-interface {p1, p0}, Landroid/location/IGnssAntennaInfoListener;->onGnssAntennaInfoChanged(Ljava/util/List;)V

    return-void
.end method
