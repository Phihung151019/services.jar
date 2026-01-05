.class public final Lcom/android/server/enterprise/auditlog/eventsdata/EventData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/sec/enterprise/auditlog/AuditEvent;


# instance fields
.field public final caller:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventCaller;

.field public final component:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

.field public final destination:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventDestination;

.field public final group:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;

.field public final message:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

.field public final outcome:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

.field public final privacy:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

.field public final severity:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventCaller;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventDestination;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->message:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->privacy:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->component:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

    iput-object p4, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->severity:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;

    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->group:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;

    iput-object p6, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->outcome:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    iput-object p7, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->caller:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventCaller;

    iput-object p8, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->destination:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventDestination;

    return-void
.end method

.method public static createEvent(IIIIIILjava/lang/String;Ljava/lang/String;)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;
    .locals 9

    new-instance v0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    new-instance v1, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    const/4 v2, 0x1

    invoke-direct {v1, p6, v2}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 p6, p7

    iput-object p6, v2, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;->component:Ljava/lang/String;

    new-instance v3, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;-><init>(I)V

    new-instance v4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;

    invoke-direct {v4, p1}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;-><init>(I)V

    new-instance v5, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;

    invoke-direct {v5, p2}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;-><init>(I)V

    new-instance v6, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    invoke-direct {v6, p3}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;-><init>(I)V

    new-instance v7, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventCaller;

    invoke-direct {v7, p4}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventCaller;-><init>(I)V

    new-instance v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventDestination;

    invoke-direct {v8, p5}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventDestination;-><init>(I)V

    invoke-direct/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;-><init>(Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventCaller;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventDestination;)V

    return-object v0
.end method

.method public static createEvent(Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;Ljava/lang/String;IIIII)Lcom/android/server/enterprise/auditlog/eventsdata/EventData;
    .locals 9

    new-instance v0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    new-instance v2, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p1, v2, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;->component:Ljava/lang/String;

    new-instance v3, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    invoke-direct {v3, p2}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;-><init>(I)V

    new-instance v4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;

    invoke-direct {v4, p3}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;-><init>(I)V

    new-instance v5, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;

    invoke-direct {v5, p4}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;-><init>(I)V

    new-instance v6, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    invoke-direct {v6, p5}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;-><init>(I)V

    new-instance v7, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventCaller;

    const/4 p1, 0x1

    invoke-direct {v7, p1}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventCaller;-><init>(I)V

    new-instance v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventDestination;

    invoke-direct {v8, p6}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventDestination;-><init>(I)V

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;-><init>(Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventCaller;Lcom/android/server/enterprise/auditlog/eventsdata/types/EventDestination;)V

    return-object v0
.end method


# virtual methods
.method public final formatDynamicEvents(Landroid/content/Context;ILjava/util/List;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->privacy:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->component:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

    iget-object v1, v1, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;->component:Ljava/lang/String;

    const-string/jumbo v2, "SecurityLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget v2, v0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->privacy:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-eq v2, v6, :cond_2

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    iput v3, v0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    goto :goto_0

    :cond_1
    const/4 p4, -0x1

    iput p4, v0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iput p4, v0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    goto :goto_0

    :cond_3
    sparse-switch p2, :sswitch_data_0

    const-string/jumbo p4, "why this security log is marked as private? "

    const-string v0, "EventPrivacy"

    invoke-static {p2, p4, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->parseInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iput p4, v0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    goto :goto_0

    :sswitch_1
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->parseInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    iput p4, v0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    goto :goto_0

    :sswitch_2
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->parseInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iput p4, v0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    goto :goto_0

    :sswitch_3
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->parseInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    iput p4, v0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    :goto_0
    iget-object p4, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->privacy:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->message:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->defaultMessage:Ljava/lang/String;

    iget v1, p4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->privacy:I

    if-eq v5, v1, :cond_5

    if-ne v6, v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "%[0-9]*\\.?[0-9]*[a-zA-Z]"

    const-string/jumbo v2, "[redacted]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->redactedMessage:Ljava/lang/String;

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->redactedMessage:Ljava/lang/String;

    :goto_2
    iget-object p4, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->outcome:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    iget v0, p4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcomeType:I

    const-string/jumbo v1, "Unknown tag - "

    if-eqz v0, :cond_b

    if-eq v0, v5, :cond_a

    const-string v2, "EventOutcome"

    if-eq v0, v6, :cond_6

    const-string/jumbo p4, "Unknown outcome"

    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    sparse-switch p2, :sswitch_data_1

    invoke-static {p2, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_4
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->parseInteger(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v5, :cond_7

    move v0, v5

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    iput-boolean v0, p4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcome:Z

    goto :goto_6

    :sswitch_5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->parseInteger(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v4, :cond_8

    move v0, v5

    goto :goto_4

    :cond_8
    move v0, v3

    :goto_4
    iput-boolean v0, p4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcome:Z

    goto :goto_6

    :sswitch_6
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->parseInteger(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v5, :cond_9

    move v0, v5

    goto :goto_5

    :cond_9
    move v0, v3

    :goto_5
    iput-boolean v0, p4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcome:Z

    goto :goto_6

    :cond_a
    iput-boolean v3, p4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcome:Z

    goto :goto_6

    :cond_b
    iput-boolean v5, p4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcome:Z

    :goto_6
    iget-object p4, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->severity:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->outcome:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    iget-boolean v0, v0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcome:Z

    iget v2, p4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;->severityType:I

    const/4 v7, 0x4

    const-string v8, "EventSeverity"

    packed-switch v2, :pswitch_data_0

    const-string/jumbo p4, "Unknown severity"

    invoke-static {v8, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :pswitch_0
    const/4 v2, 0x5

    sparse-switch p2, :sswitch_data_2

    invoke-static {p2, v1, v8}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :sswitch_7
    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    move v2, v4

    :goto_7
    iput v2, p4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;->severity:I

    goto :goto_9

    :sswitch_8
    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    move v2, v7

    :goto_8
    iput v2, p4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;->severity:I

    goto :goto_9

    :pswitch_1
    iput v2, p4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;->severity:I

    :goto_9
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->message:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    iget-object p4, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->defaultMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->message:Ljava/lang/String;

    if-eqz p3, :cond_16

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_e

    goto/16 :goto_a

    :cond_e
    const/16 p4, 0x7c

    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->isFlagActive(I)Z

    move-result p4

    if-eqz p4, :cond_14

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->isFlagActive(I)Z

    move-result p4

    if-eqz p4, :cond_f

    invoke-static {v3, p1, p3}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->replaceUidToPackageName(ILandroid/content/Context;Ljava/util/List;)V

    :cond_f
    const/16 p4, 0x8

    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->isFlagActive(I)Z

    move-result p4

    if-eqz p4, :cond_10

    invoke-static {v5, p1, p3}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->replaceUidToPackageName(ILandroid/content/Context;Ljava/util/List;)V

    :cond_10
    const/16 p4, 0x10

    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->isFlagActive(I)Z

    move-result p4

    if-eqz p4, :cond_11

    invoke-static {v6, p1, p3}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->replaceUidToPackageName(ILandroid/content/Context;Ljava/util/List;)V

    :cond_11
    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->isFlagActive(I)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {v3, p3}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->maskMacAddress(ILjava/util/List;)V

    :cond_12
    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->isFlagActive(I)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {v5, p3}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->maskMacAddress(ILjava/util/List;)V

    :cond_13
    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->isFlagActive(I)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {v6, p3}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->maskMacAddress(ILjava/util/List;)V

    :cond_14
    const p1, 0x33477

    if-ne p2, p1, :cond_15

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_15

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->parseString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->parseString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->parseString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v6, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p3, v4, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_15
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->message:Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->message:Ljava/lang/String;

    :cond_16
    :goto_a
    return-void

    :sswitch_data_0
    .sparse-switch
        0x33455 -> :sswitch_3
        0x33468 -> :sswitch_3
        0x33469 -> :sswitch_3
        0x3346a -> :sswitch_3
        0x3346d -> :sswitch_2
        0x3346e -> :sswitch_2
        0x33470 -> :sswitch_1
        0x33474 -> :sswitch_0
        0x33479 -> :sswitch_2
        0x3347a -> :sswitch_2
        0x3347b -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x33457 -> :sswitch_6
        0x33468 -> :sswitch_6
        0x33469 -> :sswitch_6
        0x3346a -> :sswitch_6
        0x3346d -> :sswitch_6
        0x3346e -> :sswitch_6
        0x3346f -> :sswitch_6
        0x33475 -> :sswitch_5
        0x33477 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x33457 -> :sswitch_8
        0x33468 -> :sswitch_8
        0x33469 -> :sswitch_8
        0x3346a -> :sswitch_8
        0x3346d -> :sswitch_8
        0x3346e -> :sswitch_7
        0x3346f -> :sswitch_7
        0x33477 -> :sswitch_7
    .end sparse-switch
.end method

.method public final getComponent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->component:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;->component:Ljava/lang/String;

    return-object p0
.end method

.method public final getGroup()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->group:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;

    iget p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;->group:I

    return p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->message:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getOutcome()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->outcome:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcome:Z

    return p0
.end method

.method public final getPrivacy()Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->privacy:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    iget p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->privacy:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getRedactedMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->privacy:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->redactedMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final getSeverity()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->severity:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;

    iget p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;->severity:I

    return p0
.end method

.method public final getUserId()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->privacy:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    iget p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    return p0
.end method

.method public final isPrivileged()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->caller:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventCaller;

    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventCaller;->privileged:Z

    return p0
.end method
