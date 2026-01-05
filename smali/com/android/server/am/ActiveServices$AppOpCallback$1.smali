.class public final Lcom/android/server/am/ActiveServices$AppOpCallback$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpNotedInternalListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices$AppOpCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback$1;->this$0:Lcom/android/server/am/ActiveServices$AppOpCallback;

    return-void
.end method


# virtual methods
.method public final onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback$1;->this$0:Lcom/android/server/am/ActiveServices$AppOpCallback;

    invoke-static {p0, p1, p2, p6}, Lcom/android/server/am/ActiveServices$AppOpCallback;->-$$Nest$mincrementOpCountIfNeeded(Lcom/android/server/am/ActiveServices$AppOpCallback;III)V

    return-void
.end method
