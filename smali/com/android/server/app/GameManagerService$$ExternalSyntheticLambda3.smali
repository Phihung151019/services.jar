.class public final synthetic Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameManagerService$MyUidObserver;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/app/GameManagerService;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/app/GameManagerService$MyUidObserver;

    iget p0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$1:I

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    sget v1, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/app/GameManagerService;->isPackageGame(ILjava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/app/GameManagerService;

    iget p0, p0, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;->f$1:I

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/app/GameManagerService;->isPackageGame(ILjava/lang/String;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
