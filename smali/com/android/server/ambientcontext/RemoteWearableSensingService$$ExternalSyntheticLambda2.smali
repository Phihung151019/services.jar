.class public final synthetic Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/RemoteCallback;

.field public final synthetic f$3:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$0:Landroid/app/ambientcontext/AmbientContextEventRequest;

    iput-object p2, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$2:Landroid/os/RemoteCallback;

    iput-object p4, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$3:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$0:Landroid/app/ambientcontext/AmbientContextEventRequest;

    iget-object v1, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$2:Landroid/os/RemoteCallback;

    iget-object p0, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$3:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    sget v3, Lcom/android/server/ambientcontext/RemoteWearableSensingService;->$r8$clinit:I

    invoke-interface {p1, v0, v1, v2, p0}, Landroid/service/wearable/IWearableSensingService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    return-void
.end method
