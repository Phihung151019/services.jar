.class public final synthetic Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 6

    iget v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;->f$0:I

    iget-object v2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    const-string/jumbo p0, "media_projection"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZI)Landroid/media/projection/IMediaProjection;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/media/projection/IMediaProjection;->setRecordingOverlay(Z)V

    return-object p0
.end method
