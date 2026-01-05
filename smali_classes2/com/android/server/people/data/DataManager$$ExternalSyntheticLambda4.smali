.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/people/data/DataManager;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/people/data/DataManager;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/server/people/data/PackageData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V

    iget-object p0, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/people/data/DataManager;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/server/people/data/PackageData;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p1, p0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/PackageData;Ljava/util/List;)V

    iget-object p0, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
