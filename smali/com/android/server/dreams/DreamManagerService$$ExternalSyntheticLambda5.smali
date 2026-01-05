.class public final synthetic Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/dreams/DreamManagerService;

    iput-boolean p2, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$1:Z

    iput-object p3, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/dreams/DreamManagerService;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$1:Z

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    return-void
.end method
