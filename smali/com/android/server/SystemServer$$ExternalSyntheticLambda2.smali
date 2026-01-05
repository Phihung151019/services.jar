.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/SystemServer;->$r8$lambda$2PdG6KuU0ZTvilD515PGrttj0sk(III)V

    const/4 p0, 0x0

    throw p0
.end method
