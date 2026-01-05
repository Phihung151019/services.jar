.class public final Lcom/android/server/ProfileService$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ProfileService;


# direct methods
.method public constructor <init>(Lcom/android/server/ProfileService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ProfileService$1;->this$0:Lcom/android/server/ProfileService;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/ProfileService$1;->this$0:Lcom/android/server/ProfileService;

    invoke-virtual {v0}, Lcom/android/server/ProfileService;->initializeInterfaceOfService()V

    iget-object v0, p0, Lcom/android/server/ProfileService$1;->this$0:Lcom/android/server/ProfileService;

    iget-object v0, v0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ProfileService$1;->this$0:Lcom/android/server/ProfileService;

    iget-object v2, v2, Lcom/android/server/ProfileService;->SERVICE_NAME:Ljava/lang/String;

    const-string v3, " died; reconnecting"

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ProfileService$1;->this$0:Lcom/android/server/ProfileService;

    invoke-virtual {p0}, Lcom/android/server/ProfileService;->selectSuitableProfileService()V

    return-void
.end method
