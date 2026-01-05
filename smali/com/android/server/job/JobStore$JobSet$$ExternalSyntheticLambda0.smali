.class public final synthetic Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>(I[I)V
    .locals 0

    iput p1, p0, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;->f$0:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;->f$0:[I

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    packed-switch v0, :pswitch_data_0

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_0
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
