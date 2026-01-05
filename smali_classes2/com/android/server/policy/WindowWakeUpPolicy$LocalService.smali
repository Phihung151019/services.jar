.class public final Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/policy/WindowWakeUpPolicyInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/WindowWakeUpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowWakeUpPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;->this$0:Lcom/android/server/policy/WindowWakeUpPolicy;

    return-void
.end method


# virtual methods
.method public final setInputWakeUpDelegate(Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;->this$0:Lcom/android/server/policy/WindowWakeUpPolicy;

    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    return-void
.end method
