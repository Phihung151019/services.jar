.class public final Lcom/android/server/vr/VrManagerService$6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$b:Z

.field public final synthetic val$c:Landroid/content/ComponentName;

.field public final synthetic val$pid:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/vr/VrManagerService$6;->val$c:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/android/server/vr/VrManagerService$6;->val$b:Z

    iput p1, p0, Lcom/android/server/vr/VrManagerService$6;->val$pid:I

    return-void
.end method
