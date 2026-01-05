.class public final synthetic Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/view/contentcapture/DataShareRequest;

.field public final synthetic f$1:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/DataShareRequest;Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda4;->f$0:Landroid/view/contentcapture/DataShareRequest;

    iput-object p2, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda4;->f$0:Landroid/view/contentcapture/DataShareRequest;

    iget-object p0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    check-cast p1, Landroid/service/contentcapture/IContentCaptureService;

    invoke-interface {p1, v0, p0}, Landroid/service/contentcapture/IContentCaptureService;->onDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    return-void
.end method
