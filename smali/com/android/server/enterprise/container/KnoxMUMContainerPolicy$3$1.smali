.class public final Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

.field public final synthetic val$newState:Lcom/samsung/android/knox/SemPersonaState;

.field public final synthetic val$oldState:Lcom/samsung/android/knox/SemPersonaState;

.field public final synthetic val$personaId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    iput-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    iput-object p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    iput p4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PersonaObserver.onStateChange() inside handler state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " old state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxMUMContainerPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    const/16 v2, 0x5f

    const/16 v3, 0x5b

    const/16 v5, 0x5d

    const/16 v6, 0x5e

    const/4 v7, -0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    aget v1, v8, v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    move v1, v5

    move v5, v7

    goto :goto_1

    :pswitch_0
    move v1, v5

    move v5, v6

    goto :goto_1

    :pswitch_1
    move v1, v5

    goto :goto_1

    :pswitch_2
    move v1, v5

    move v5, v3

    goto :goto_1

    :pswitch_3
    move v1, v5

    move v5, v2

    :goto_1
    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_1

    :goto_2
    move v6, v7

    goto :goto_3

    :pswitch_4
    move v6, v1

    goto :goto_3

    :pswitch_5
    move v6, v3

    goto :goto_3

    :pswitch_6
    move v6, v2

    :goto_3
    :pswitch_7
    const/4 v7, 0x0

    if-eq v6, v5, :cond_3

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    array-length v9, v8

    move v10, v7

    :goto_4
    if-ge v10, v9, :cond_3

    aget-object v2, v8, v10

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$msendContainerStateChangeIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$msendContainerStateChangeIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v1, v0

    :goto_5
    if-ge v7, v1, :cond_5

    aget-object v2, v0, v7

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    iget-object v3, v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iget v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    invoke-static {v3, v2, v5, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$msendContainerAdminLockIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v1, 0x0

    iget p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    invoke-static {v0, v1, p0, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$msendContainerAdminLockIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method
