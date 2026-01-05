.class public final Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;
.super Landroid/os/RemoteCallbackList;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    check-cast p1, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    return-void
.end method
