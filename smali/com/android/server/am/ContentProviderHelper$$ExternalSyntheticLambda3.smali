.class public final synthetic Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ContentProviderHelper;

.field public final synthetic f$1:Lcom/android/server/am/ContentProviderConnection;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ContentProviderHelper;

    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/am/ContentProviderConnection;

    iput-boolean p3, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ContentProviderHelper;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/am/ContentProviderConnection;

    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$2:Z

    iget-boolean p0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$3:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    return-void
.end method
