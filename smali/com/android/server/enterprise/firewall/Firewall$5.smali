.class public abstract synthetic Lcom/android/server/enterprise/firewall/Firewall$5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $SwitchMap$com$samsung$android$knox$net$firewall$Firewall$AddressType:[I

.field public static final synthetic $SwitchMap$com$samsung$android$knox$net$firewall$Firewall$NetworkInterface:[I

.field public static final synthetic $SwitchMap$com$samsung$android$knox$net$firewall$Firewall$PortLocation:[I

.field public static final synthetic $SwitchMap$com$samsung$android$knox$net$firewall$Firewall$Protocol:[I

.field public static final synthetic $SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->values()[Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->values()[Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$Protocol:[I

    :try_start_4
    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$Protocol:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$Protocol:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->UDP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->values()[Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$PortLocation:[I

    :try_start_7
    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$PortLocation:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->LOCAL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$PortLocation:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->REMOTE:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->values()[Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$NetworkInterface:[I

    :try_start_a
    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$NetworkInterface:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$NetworkInterface:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->values()[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$AddressType:[I

    :try_start_d
    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$AddressType:[I

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method
