.class public final synthetic Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/translation/TranslationManagerServiceImpl;ILandroid/os/Bundle;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

    iput p2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

    iget v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    check-cast p1, Landroid/os/IRemoteCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2, v1, p1, v2, p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method
