.class public final synthetic Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/FlexibilityController$FcHandler;JLandroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    iput-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;->f$2:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    iget-wide v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;->f$1:J

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;->f$2:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Checking on "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JobScheduler.Flex"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    const/high16 v3, 0x200000

    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
