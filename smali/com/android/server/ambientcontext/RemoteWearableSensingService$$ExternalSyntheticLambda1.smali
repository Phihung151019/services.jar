.class public final synthetic Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    sget v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService;->$r8$clinit:I

    invoke-interface {p1, p0}, Landroid/service/wearable/IWearableSensingService;->stopDetection(Ljava/lang/String;)V

    return-void
.end method
