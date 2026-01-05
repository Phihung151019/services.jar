.class public abstract Lcom/android/server/firewall/StringFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field public static final ACTION:Lcom/android/server/firewall/StringFilter$1;

.field public static final COMPONENT:Lcom/android/server/firewall/StringFilter$1;

.field public static final COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$1;

.field public static final COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$1;

.field public static final DATA:Lcom/android/server/firewall/StringFilter$1;

.field public static final HOST:Lcom/android/server/firewall/StringFilter$1;

.field public static final MIME_TYPE:Lcom/android/server/firewall/StringFilter$1;

.field public static final PATH:Lcom/android/server/firewall/StringFilter$1;

.field public static final SCHEME:Lcom/android/server/firewall/StringFilter$1;

.field public static final SSP:Lcom/android/server/firewall/StringFilter$1;


# instance fields
.field public final mValueProvider:Lcom/android/server/firewall/StringFilter$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    const-string/jumbo v1, "component"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$1;

    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    const-string/jumbo v1, "component-name"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$1;

    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    const-string/jumbo v1, "component-package"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$1;

    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    const-string/jumbo v1, "action"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/StringFilter$1;

    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    const-string/jumbo v1, "data"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$1;

    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    const-string/jumbo v1, "mime-type"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$1;

    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    const-string/jumbo v1, "scheme"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->SCHEME:Lcom/android/server/firewall/StringFilter$1;

    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    const-string/jumbo v1, "scheme-specific-part"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$1;

    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    const-string/jumbo v1, "host"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$1;

    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    const-string/jumbo v1, "path"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$1;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/StringFilter$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/firewall/StringFilter;->mValueProvider:Lcom/android/server/firewall/StringFilter$1;

    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 0

    iget-object p1, p0, Lcom/android/server/firewall/StringFilter;->mValueProvider:Lcom/android/server/firewall/StringFilter$1;

    iget p1, p1, Lcom/android/server/firewall/StringFilter$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object p6, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p6

    goto :goto_1

    :pswitch_4
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    :pswitch_8
    invoke-virtual {p0, p6}, Lcom/android/server/firewall/StringFilter;->matchesValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract matchesValue(Ljava/lang/String;)Z
.end method
