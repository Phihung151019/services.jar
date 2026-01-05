.class public final Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;
.super Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$attributionTagFuture:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;->val$attributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAttributionTag(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;->val$attributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
