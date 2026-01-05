.class public final Lcom/android/server/appop/AppOpsService$ChangeRec;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final op:I

.field public final pkg:Ljava/lang/String;

.field public final previous_mode:I

.field public final uid:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    iput p2, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    iput-object p4, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->previous_mode:I

    return-void
.end method
