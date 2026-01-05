.class public final synthetic Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
