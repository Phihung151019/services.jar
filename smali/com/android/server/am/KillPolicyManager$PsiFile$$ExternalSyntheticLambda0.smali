.class public final synthetic Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/KillPolicyManager$PsiFile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/KillPolicyManager$PsiFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/KillPolicyManager$PsiFile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/KillPolicyManager$PsiFile;

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v0, "some"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "avg10"

    if-eqz v0, :cond_0

    invoke-static {v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mSomeAvg10:D

    return-void

    :cond_0
    const-string/jumbo p0, "full"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    :cond_1
    return-void
.end method
