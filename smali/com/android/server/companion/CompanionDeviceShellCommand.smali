.class public final Lcom/android/server/companion/CompanionDeviceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

.field public final mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

.field public final mService:Lcom/android/server/companion/CompanionDeviceManagerService;

.field public final mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

.field public final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/transport/CompanionTransportManager;Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;Lcom/android/server/companion/association/AssociationRequestsProcessor;Lcom/android/server/companion/BackupRestoreProcessor;Lcom/android/server/companion/association/DisassociationProcessor;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    iput-object p4, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    iput-object p5, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    iput-object p6, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    iput-object p7, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    iput-object p8, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    return-void
.end method


# virtual methods
.method public final getNextBooleanArgRequired()Z
    .locals 2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected a boolean argument but was: "

    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getNextIntArgRequired()I
    .locals 0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, " | "

    const-string/jumbo v3, "Max ID: "

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v6, "simulate-device-appeared"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :sswitch_1
    const-string/jumbo v6, "send-context-sync-call-control-message"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x13

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v6, "simulate-device-event-device-locked"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v6, "simulate-device-uuid-event"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v6, "associate"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v5

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v6, "disable-perm-sync"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x1b

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v6, "refresh-cache"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v6, "disable-context-sync"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x16

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v6, "stop-observing-device-presence-uuid"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xc

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v6, "disassociate"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v6, "send-context-sync-empty-message"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x11

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v6, "apply-restored-payload"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xe

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v6, "remove-perm-sync-state"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x19

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v6, "list"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v6, "simulate-device-disappeared"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x6

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v6, "send-context-sync-call-create-message"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x12

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v6, "simulate-device-event-device-unlocked"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xa

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v6, "start-observing-device-presence-uuid"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xb

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v6, "disassociate-all"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v6, "simulate-device-event"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_14
    const-string/jumbo v6, "get-perm-sync-state"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x18

    goto :goto_1

    :sswitch_15
    const-string/jumbo v6, "create-emulated-transport"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x10

    goto :goto_1

    :sswitch_16
    const-string/jumbo v6, "enable-context-sync"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x17

    goto :goto_1

    :sswitch_17
    const-string/jumbo v6, "remove-inactive-associations"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xf

    goto :goto_1

    :sswitch_18
    const-string/jumbo v6, "enable-perm-sync"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x1a

    goto :goto_1

    :sswitch_19
    const-string/jumbo v6, "get-backup-payload"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xd

    goto :goto_1

    :sswitch_1a
    const-string/jumbo v6, "send-context-sync-call-facilitators-message"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x14

    goto :goto_1

    :sswitch_1b
    const-string/jumbo v6, "send-context-sync-call-message"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    const/16 v6, 0x15

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v6, -0x1

    :goto_1
    const-string/jumbo v15, "shell"

    const-string/jumbo v12, "UUID can not be null."

    const-string/jumbo v8, "null"

    const-string v10, " -> "

    move-object/from16 v16, v12

    const-wide v11, 0x10500000001L

    const-wide v13, 0x10900000001L

    packed-switch v6, :pswitch_data_0

    :try_start_1
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_2
    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    iget-object v6, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v6, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v6

    new-instance v8, Landroid/companion/datatransfer/PermissionSyncRequest;

    invoke-direct {v8, v0}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    invoke-virtual {v8, v7}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserConsented(Z)V

    iget-object v3, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    invoke-virtual {v3, v6, v8}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    :pswitch_1
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_3
    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    iget-object v6, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v6, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v6

    new-instance v8, Landroid/companion/datatransfer/PermissionSyncRequest;

    invoke-direct {v8, v0}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    invoke-virtual {v8, v5}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserConsented(Z)V

    iget-object v3, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    invoke-virtual {v3, v6, v8}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    :pswitch_2
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v8

    goto :goto_4

    :cond_3
    invoke-virtual {v3}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v6, v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;I)V

    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    :pswitch_3
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_6
    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return v7

    :pswitch_4
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    iget-object v4, v4, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    new-instance v6, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v6, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    move-result v0

    or-int/2addr v0, v3

    invoke-virtual {v6, v0}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    return v7

    :pswitch_5
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    iget-object v4, v4, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    new-instance v6, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v6, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    move-result v0

    not-int v3, v3

    and-int/2addr v0, v3

    invoke-virtual {v6, v0}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    return v7

    :pswitch_6
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v8

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v10

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v15

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v16

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v19

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v20

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v21

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v22

    new-instance v7, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v7}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-virtual {v7, v11, v12, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10b00000004L

    invoke-virtual {v7, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    move/from16 v17, v10

    const-wide v9, 0x20b00000001L

    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    invoke-virtual {v7, v13, v14, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move v3, v6

    const-wide v5, 0x10b00000002L

    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    move/from16 v18, v3

    const-string v3, "Caller Name"

    invoke-virtual {v7, v13, v14, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderDrawableToByteArray(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v3

    const-wide v13, 0x10c00000002L

    invoke-virtual {v7, v13, v14, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    const-wide v13, 0x10b00000003L

    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    const-string/jumbo v3, "Test App Name"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v25, v0

    const-wide v0, 0x10900000001L

    :try_start_2
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10900000002L

    invoke-virtual {v7, v0, v1, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v0, 0x10e00000003L

    move/from16 v3, v18

    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x20e00000004L

    if-eqz v8, :cond_6

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_13

    :cond_6
    :goto_7
    if-eqz v17, :cond_7

    const/4 v3, 0x2

    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_7
    if-eqz v15, :cond_8

    const/4 v3, 0x3

    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_8
    if-eqz v16, :cond_9

    const/4 v3, 0x4

    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_9
    if-eqz v19, :cond_a

    const/4 v3, 0x5

    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_a
    if-eqz v20, :cond_b

    const/4 v3, 0x6

    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_b
    if-eqz v21, :cond_c

    const/4 v3, 0x7

    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_c
    if-eqz v22, :cond_d

    const/16 v3, 0x8

    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_d
    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v7, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    :try_start_3
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    move/from16 v3, v25

    invoke-virtual {v0, v3}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    invoke-virtual {v7}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x63678883

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    return v4

    :pswitch_7
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v6}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v6, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10b00000004L

    invoke-virtual {v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v3, :cond_10

    const-wide v11, 0x20b00000003L

    invoke-virtual {v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    if-ne v3, v7, :cond_e

    move-object v7, v4

    :goto_9
    const-wide v13, 0x10900000001L

    goto :goto_a

    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :goto_a
    invoke-virtual {v6, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v7, 0x1

    if-ne v3, v7, :cond_f

    move-object v7, v5

    :goto_b
    const-wide v13, 0x10900000002L

    goto :goto_c

    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :goto_c
    invoke-virtual {v6, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x1

    goto :goto_8

    :cond_10
    invoke-virtual {v6, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x63678883

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    return v4

    :pswitch_8
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v4

    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    invoke-static {v4, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(ILjava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x63678883

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    return v4

    :pswitch_9
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v6, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    invoke-static {v3, v4, v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallCreateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x63678883

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    return v4

    :pswitch_a
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v3, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x63678883

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    return v4

    :pswitch_b
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    const/16 v23, 0x0

    return v23

    :pswitch_c
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    const/16 v23, 0x0

    return v23

    :pswitch_d
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/companion/BackupRestoreProcessor;->applyRestoredPayload([BI)V

    const/16 v23, 0x0

    return v23

    :pswitch_e
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/BackupRestoreProcessor;->getBackupPayload(I)[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v23, 0x0

    return v23

    :pswitch_f
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move-object/from16 v6, v16

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v23, 0x0

    return v23

    :cond_11
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    new-instance v5, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    invoke-direct {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v3, v0, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    return v6

    :pswitch_10
    move-object/from16 v6, v16

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v23, 0x0

    return v23

    :cond_12
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    new-instance v5, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    invoke-direct {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v3, v0, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    return v6

    :pswitch_11
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceCallerShellOrRoot()V

    invoke-virtual {v3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->sendDevicePresenceEventOnUnlocked(I)V

    const/16 v23, 0x0

    return v23

    :pswitch_12
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v4

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v5, 0x0

    goto :goto_d

    :cond_13
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    :goto_d
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceCallerShellOrRoot()V

    invoke-virtual {v6, v0, v3, v4, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    const/16 v23, 0x0

    return v23

    :pswitch_13
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v5

    new-instance v6, Lcom/android/server/companion/devicepresence/ObservableUuid;

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v4, v0, v3, v7}, Lcom/android/server/companion/devicepresence/ObservableUuid;-><init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceCallerShellOrRoot()V

    invoke-virtual {v0, v6, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    const/16 v23, 0x0

    return v23

    :pswitch_14
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    const/16 v23, 0x0

    return v23

    :pswitch_15
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v7}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    const/4 v4, 0x0

    return v4

    :pswitch_16
    move v4, v7

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    return v4

    :pswitch_17
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/AssociationStore;)V

    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    const/16 v23, 0x0

    return v23

    :pswitch_18
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByUser(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-virtual {v4, v3, v15}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    goto :goto_e

    :cond_14
    const/16 v23, 0x0

    goto/16 :goto_12

    :pswitch_19
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v6, v0, v3, v5}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, "Association doesn\'t exist."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v23, 0x0

    return v23

    :cond_15
    const/16 v23, 0x0

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {v3, v0, v15}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    return v23

    :pswitch_1a
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v4

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    const-string/jumbo v6, "false"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_f

    :cond_16
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    move v10, v3

    goto :goto_10

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Expected a boolean argument but was: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_f
    const/4 v10, 0x0

    :goto_10
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v6

    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    move-object v8, v7

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/graphics/drawable/Icon;Z)V

    const/16 v23, 0x0

    return v23

    :pswitch_1b
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v5

    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v6, v5}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    iget-object v7, v6, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget v6, v6, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Association ID | Package Name | Mac Address"

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/AssociationInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_11

    :goto_12
    return v23

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_13
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occurred while executing \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\':"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const/16 v24, 0x1

    return v24

    :sswitch_data_0
    .sparse-switch
        -0x78de6919 -> :sswitch_1b
        -0x76d9e39f -> :sswitch_1a
        -0x7196e026 -> :sswitch_19
        -0x6ee6a072 -> :sswitch_18
        -0x6e9ef255 -> :sswitch_17
        -0x48f877fd -> :sswitch_16
        -0x3aaa3162 -> :sswitch_15
        -0x2d23c69b -> :sswitch_14
        -0x25c83694 -> :sswitch_13
        -0x25b7ef5c -> :sswitch_12
        -0x20ae7cab -> :sswitch_11
        -0x1ed53de7 -> :sswitch_10
        -0x13014aaa -> :sswitch_f
        -0xb6faf2c -> :sswitch_e
        0x32b09e -> :sswitch_d
        0x13b98693 -> :sswitch_c
        0x20e05ad6 -> :sswitch_b
        0x27a53e18 -> :sswitch_a
        0x2ebfca50 -> :sswitch_9
        0x2f25cbb5 -> :sswitch_8
        0x3fc236be -> :sswitch_7
        0x545c8610 -> :sswitch_6
        0x5b04a2b3 -> :sswitch_5
        0x5e900f1e -> :sswitch_4
        0x72009e76 -> :sswitch_3
        0x761c1fc0 -> :sswitch_2
        0x77005277 -> :sswitch_1
        0x774e28e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 12

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Companion Device Manager (companiondevice) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  list USER_ID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      List all Associations for a user."

    const-string v1, "  associate USER_ID PACKAGE MAC_ADDRESS [DEVICE_PROFILE] [SELF_MANAGED]"

    const-string v2, "      Create a new Association."

    const-string v3, "  disassociate USER_ID PACKAGE MAC_ADDRESS"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      Remove an existing Association."

    const-string v1, "  disassociate-all USER_ID"

    const-string v2, "      Remove all Associations for a user."

    const-string v3, "  refresh-cache"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      Clear the in-memory association cache and reload all association "

    const-string v1, "      information from disk. USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    const-string v2, "  simulate-device-appeared ASSOCIATION_ID"

    const-string v3, "      Make CDM act as if the given companion device has appeared."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      I.e. bind the associated companion application\'s"

    const-string v1, "      CompanionDeviceService(s) and trigger onDeviceAppeared() callback."

    const-string v2, "      The CDM will consider the devices as present for 60 seconds and then"

    const-string v4, "      will act as if device disappeared, unless \'simulate-device-disappeared\'"

    invoke-static {p0, v0, v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "      or \'simulate-device-appeared\' is called again before 60 seconds run out."

    const-string v4, "      USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    const-string v5, "  simulate-device-disappeared ASSOCIATION_ID"

    const-string v6, "      Make CDM act as if the given companion device has disappeared."

    invoke-static {p0, v2, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "      I.e. unbind the associated companion application\'s"

    const-string v5, "      CompanionDeviceService(s) and trigger onDeviceDisappeared() callback."

    const-string v7, "      NOTE: This will only have effect if \'simulate-device-appeared\' was"

    const-string v8, "      invoked for the same device (same ASSOCIATION_ID) no longer than"

    invoke-static {p0, v2, v5, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "      60 seconds ago."

    const-string v9, "  get-backup-payload USER_ID"

    const-string v10, "      Generate backup payload for the given user and print its content"

    const-string v11, "      encoded to a Base64 string."

    invoke-static {p0, v5, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "  apply-restored-payload USER_ID PAYLOAD"

    const-string v10, "      Apply restored backup payload for the given user."

    invoke-static {p0, v4, v9, v10, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "  simulate-device-event ASSOCIATION_ID EVENT"

    const-string v10, "  Simulate the companion device event changes:"

    const-string v11, "    Case(0): "

    invoke-static {p0, v9, v10, v11, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "      The CDM will consider the devices as present for60 seconds and then"

    const-string v9, "      will act as if device disappeared, unless\'simulate-device-disappeared\'"

    invoke-static {p0, v0, v1, v3, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      or \'simulate-device-appeared\' is called again before 60 secondsrun out."

    const-string v1, "    Case(1): "

    invoke-static {p0, v0, v1, v6, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      CompanionDeviceService(s) and trigger onDeviceDisappeared()callback."

    invoke-static {p0, v0, v7, v8, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Case(2): "

    const-string v1, "      Make CDM act as if the given companion device is BT connected "

    const-string v2, "    Case(3): "

    const-string v3, "      Make CDM act as if the given companion device is BT disconnected "

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "  simulate-device-uuid-event UUID PACKAGE USERID EVENT"

    invoke-static {p0, v4, v1, v10, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      Make CDM act as if the given DEVICE is BT connected baseon the UUID"

    const-string v1, "      Make CDM act as if the given DEVICE is BT disconnected baseon the UUID"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  simulate-device-event-device-locked ASSOCIATION_ID USER_ID DEVICE_EVENT PARCEL_UUID"

    const-string v1, "  Simulate device event when the device is locked"

    const-string v2, "  USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    const-string v3, "  simulate-device-event-device-unlocked USER_ID"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  Simulate device unlocked for given user. This will send corresponding"

    const-string v1, "  callback after simulate-device-event-device-locked"

    const-string v3, "  command has been called."

    invoke-static {p0, v0, v1, v3, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  start-observing-device-presence-uuid USER_ID PACKAGE_NAME UUID"

    const-string v1, "  Start observing device presence base on the UUID."

    const-string v3, "  stop-observing-device-presence-uuid USER_ID PACKAGE_NAME UUID"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  Stop observing device presence base on the UUID."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  remove-inactive-associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Remove self-managed associations that have not been active "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      for a long time (90 days or as configured via "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      \"debug.cdm.cdmservice.removal_time_window\" system property). "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  create-emulated-transport <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Create an EmulatedTransport for testing purposes only"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  enable-perm-sync <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Enable perm sync for the association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  disable-perm-sync <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Disable perm sync for the association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-perm-sync-state <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Get perm sync state for the association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  remove-perm-sync-state <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Remove perm sync state for the association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
