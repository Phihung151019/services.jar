.class public final synthetic Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor <init>(IILandroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;->f$2:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;->f$2:Landroid/os/ResultReceiver;

    check-cast p1, Landroid/service/translation/ITranslationService;

    sget v2, Lcom/android/server/translation/RemoteTranslationService;->$r8$clinit:I

    invoke-interface {p1, v0, v1, p0}, Landroid/service/translation/ITranslationService;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V

    return-void
.end method
