.class public final Lcom/android/server/am/UserController$2;
.super Landroid/content/IIntentReceiver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$initializeUser:Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/UserController$2;->val$initializeUser:Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/UserController$2;->val$initializeUser:Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->run()V

    return-void
.end method
