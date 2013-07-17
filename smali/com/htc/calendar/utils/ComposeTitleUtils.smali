.class public Lcom/htc/calendar/utils/ComposeTitleUtils;
.super Ljava/lang/Object;
.source "ComposeTitleUtils.java"


# static fields
.field private static Big5_arr:[B = null

.field private static Big5_str:Ljava/lang/String; = null

.field private static JP_Unicode:[B = null

.field private static JP_str:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ComposeTitleUtils"

.field public static final charsetUTF8:Ljava/lang/String; = "utf-8"

.field public static final shortBase64:Ljava/lang/String; = "B"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x1da

    .line 90
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/calendar/utils/ComposeTitleUtils;->Big5_arr:[B

    .line 92
    sput-object v2, Lcom/htc/calendar/utils/ComposeTitleUtils;->Big5_str:Ljava/lang/String;

    .line 93
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/calendar/utils/ComposeTitleUtils;->JP_Unicode:[B

    .line 95
    sput-object v2, Lcom/htc/calendar/utils/ComposeTitleUtils;->JP_str:Ljava/lang/String;

    return-void

    .line 90
    :array_0
    .array-data 0x1
        0xc6t
        0xa1t
        0xc6t
        0xa2t
        0xc6t
        0xa3t
        0xc6t
        0xa4t
        0xc6t
        0xa5t
        0xc6t
        0xa6t
        0xc6t
        0xa7t
        0xc6t
        0xa8t
        0xc6t
        0xa9t
        0xc6t
        0xaat
        0xc6t
        0xabt
        0xc6t
        0xact
        0xc6t
        0xadt
        0xc6t
        0xaet
        0xc6t
        0xaft
        0xc6t
        0xb0t
        0xc6t
        0xb1t
        0xc6t
        0xb2t
        0xc6t
        0xb3t
        0xc6t
        0xb4t
        0xc6t
        0xb5t
        0xc6t
        0xb6t
        0xc6t
        0xb7t
        0xc6t
        0xb8t
        0xc6t
        0xb9t
        0xc6t
        0xbat
        0xc6t
        0xbbt
        0xc6t
        0xbct
        0xc6t
        0xbdt
        0xc6t
        0xbet
        0xc6t
        0xbft
        0xc6t
        0xc0t
        0xc6t
        0xc1t
        0xc6t
        0xc2t
        0xc6t
        0xc3t
        0xc6t
        0xc4t
        0xc6t
        0xc5t
        0xc6t
        0xc6t
        0xc6t
        0xc7t
        0xc6t
        0xc8t
        0xc6t
        0xc9t
        0xc6t
        0xcat
        0xc6t
        0xcbt
        0xc6t
        0xcct
        0xc6t
        0xcdt
        0xc6t
        0xcet
        0xc6t
        0xcft
        0xc6t
        0xd0t
        0xc6t
        0xd1t
        0xc6t
        0xd2t
        0xc6t
        0xd3t
        0xc6t
        0xd4t
        0xc6t
        0xd5t
        0xc6t
        0xd6t
        0xc6t
        0xd7t
        0xc6t
        0xd8t
        0xc6t
        0xd9t
        0xc6t
        0xdat
        0xc6t
        0xdbt
        0xc6t
        0xdct
        0xc6t
        0xddt
        0xc6t
        0xe0t
        0xc6t
        0xe1t
        0xc6t
        0xe2t
        0xc6t
        0xe3t
        0xc6t
        0xe4t
        0xc6t
        0xe5t
        0xc6t
        0xe6t
        0xc6t
        0xe7t
        0xc6t
        0xe8t
        0xc6t
        0xe9t
        0xc6t
        0xeat
        0xc6t
        0xebt
        0xc6t
        0xect
        0xc6t
        0xedt
        0xc6t
        0xeet
        0xc6t
        0xeft
        0xc6t
        0xf0t
        0xc6t
        0xf1t
        0xc6t
        0xf2t
        0xc6t
        0xf3t
        0xc6t
        0xf4t
        0xc6t
        0xf5t
        0xc6t
        0xf6t
        0xc6t
        0xf7t
        0xc6t
        0xf8t
        0xc6t
        0xf9t
        0xc6t
        0xfat
        0xc6t
        0xfbt
        0xc6t
        0xfct
        0xc6t
        0xfdt
        0xc6t
        0xfet
        0xc7t
        0x40t
        0xc7t
        0x41t
        0xc7t
        0x42t
        0xc7t
        0x43t
        0xc7t
        0x44t
        0xc7t
        0x45t
        0xc7t
        0x46t
        0xc7t
        0x47t
        0xc7t
        0x48t
        0xc7t
        0x49t
        0xc7t
        0x4at
        0xc7t
        0x4bt
        0xc7t
        0x4ct
        0xc7t
        0x4dt
        0xc7t
        0x4et
        0xc7t
        0x4ft
        0xc7t
        0x50t
        0xc7t
        0x51t
        0xc7t
        0x52t
        0xc7t
        0x53t
        0xc7t
        0x54t
        0xc7t
        0x55t
        0xc7t
        0x56t
        0xc7t
        0x57t
        0xc7t
        0x58t
        0xc7t
        0x59t
        0xc7t
        0x5at
        0xc7t
        0x5bt
        0xc7t
        0x5ct
        0xc7t
        0x5dt
        0xc7t
        0x5et
        0xc7t
        0x5ft
        0xc7t
        0x60t
        0xc7t
        0x61t
        0xc7t
        0x62t
        0xc7t
        0x63t
        0xc7t
        0x64t
        0xc7t
        0x65t
        0xc7t
        0x66t
        0xc7t
        0x67t
        0xc7t
        0x68t
        0xc7t
        0x69t
        0xc7t
        0x6at
        0xc7t
        0x6bt
        0xc7t
        0x6ct
        0xc7t
        0x6dt
        0xc7t
        0x6et
        0xc7t
        0x6ft
        0xc7t
        0x70t
        0xc7t
        0x71t
        0xc7t
        0x72t
        0xc7t
        0x73t
        0xc7t
        0x74t
        0xc7t
        0x75t
        0xc7t
        0x76t
        0xc7t
        0x77t
        0xc7t
        0x78t
        0xc7t
        0x79t
        0xc7t
        0x7at
        0xc7t
        0x7bt
        0xc7t
        0x7ct
        0xc7t
        0x7dt
        0xc7t
        0x7et
        0xc7t
        0xa1t
        0xc7t
        0xa2t
        0xc7t
        0xa3t
        0xc7t
        0xa4t
        0xc7t
        0xa5t
        0xc7t
        0xa6t
        0xc7t
        0xa7t
        0xc7t
        0xa8t
        0xc7t
        0xa9t
        0xc7t
        0xaat
        0xc7t
        0xabt
        0xc7t
        0xact
        0xc7t
        0xadt
        0xc7t
        0xaet
        0xc7t
        0xaft
        0xc7t
        0xb0t
        0xc7t
        0xb1t
        0xc7t
        0xb2t
        0xc7t
        0xb3t
        0xc7t
        0xb4t
        0xc7t
        0xb5t
        0xc7t
        0xb6t
        0xc7t
        0xb7t
        0xc7t
        0xb8t
        0xc7t
        0xb9t
        0xc7t
        0xbat
        0xc7t
        0xbbt
        0xc7t
        0xbct
        0xc7t
        0xbdt
        0xc7t
        0xbet
        0xc7t
        0xbft
        0xc7t
        0xc0t
        0xc7t
        0xc1t
        0xc7t
        0xc2t
        0xc7t
        0xc3t
        0xc7t
        0xc4t
        0xc7t
        0xc5t
        0xc7t
        0xc6t
        0xc7t
        0xc7t
        0xc7t
        0xc8t
        0xc7t
        0xc9t
        0xc7t
        0xcat
        0xc7t
        0xcbt
        0xc7t
        0xcct
        0xc7t
        0xcdt
        0xc7t
        0xcet
        0xc7t
        0xcft
        0xc7t
        0xd0t
        0xc7t
        0xd1t
        0xc7t
        0xd2t
        0xc7t
        0xd3t
        0xc7t
        0xd4t
        0xc7t
        0xd5t
        0xc7t
        0xd6t
        0xc7t
        0xd7t
        0xc7t
        0xd8t
        0xc7t
        0xd9t
        0xc7t
        0xdat
        0xc7t
        0xdbt
        0xc7t
        0xdct
        0xc7t
        0xddt
        0xc7t
        0xdet
        0xc7t
        0xdft
        0xc7t
        0xe0t
        0xc7t
        0xe1t
        0xc7t
        0xe2t
        0xc7t
        0xe3t
        0xc7t
        0xe4t
        0xc7t
        0xe5t
        0xc7t
        0xe6t
        0xc7t
        0xe7t
        0xc7t
        0xe8t
        0xc7t
        0xe9t
        0xc7t
        0xeat
        0xc7t
        0xebt
        0xc7t
        0xect
        0xc7t
        0xedt
        0xc7t
        0xeet
        0xc7t
        0xeft
        0xc7t
        0xf0t
        0xc7t
        0xf1t
        0xc7t
        0xf2t
    .end array-data

    .line 93
    nop

    :array_1
    .array-data 0x1
        0x24t
        0x60t
        0x24t
        0x61t
        0x24t
        0x62t
        0x24t
        0x63t
        0x24t
        0x64t
        0x24t
        0x65t
        0x24t
        0x66t
        0x24t
        0x67t
        0x24t
        0x68t
        0x24t
        0x69t
        0x24t
        0x74t
        0x24t
        0x75t
        0x24t
        0x76t
        0x24t
        0x77t
        0x24t
        0x78t
        0x24t
        0x79t
        0x24t
        0x7at
        0x24t
        0x7bt
        0x24t
        0x7ct
        0x24t
        0x7dt
        0x21t
        0x70t
        0x21t
        0x71t
        0x21t
        0x72t
        0x21t
        0x73t
        0x21t
        0x74t
        0x21t
        0x75t
        0x21t
        0x76t
        0x21t
        0x77t
        0x21t
        0x78t
        0x21t
        0x79t
        0x2ft
        0x2t
        0x2ft
        0x3t
        0x2ft
        0x5t
        0x2ft
        0x7t
        0x2ft
        0xct
        0x2ft
        0xdt
        0x2ft
        0xet
        0x2ft
        0x13t
        0x2ft
        0x16t
        0x2ft
        0x19t
        0x2ft
        0x1bt
        0x2ft
        0x22t
        0x2ft
        0x27t
        0x2ft
        0x2et
        0x2ft
        0x33t
        0x2ft
        0x34t
        0x2ft
        0x35t
        0x2ft
        0x39t
        0x2ft
        0x3at
        0x2ft
        0x41t
        0x2ft
        0x46t
        0x2ft
        0x67t
        0x2ft
        0x68t
        0x2ft
        0xa1t
        0x2ft
        0xaat
        0x0t
        0xa8t
        0xfft
        0x3et
        0x30t
        0xfdt
        0x30t
        0xfet
        0x30t
        0x9dt
        0x30t
        0x9et
        0x30t
        0x5t
        0x30t
        0x6t
        0x30t
        0x7t
        0x30t
        0xfct
        0xfft
        0x3bt
        0xfft
        0x3dt
        0x27t
        0x3dt
        0x30t
        0x41t
        0x30t
        0x42t
        0x30t
        0x43t
        0x30t
        0x44t
        0x30t
        0x45t
        0x30t
        0x46t
        0x30t
        0x47t
        0x30t
        0x48t
        0x30t
        0x49t
        0x30t
        0x4at
        0x30t
        0x4bt
        0x30t
        0x4ct
        0x30t
        0x4dt
        0x30t
        0x4et
        0x30t
        0x4ft
        0x30t
        0x50t
        0x30t
        0x51t
        0x30t
        0x52t
        0x30t
        0x53t
        0x30t
        0x54t
        0x30t
        0x55t
        0x30t
        0x56t
        0x30t
        0x57t
        0x30t
        0x58t
        0x30t
        0x59t
        0x30t
        0x5at
        0x30t
        0x5bt
        0x30t
        0x5ct
        0x30t
        0x5dt
        0x30t
        0x5et
        0x30t
        0x5ft
        0x30t
        0x60t
        0x30t
        0x61t
        0x30t
        0x62t
        0x30t
        0x63t
        0x30t
        0x64t
        0x30t
        0x65t
        0x30t
        0x66t
        0x30t
        0x67t
        0x30t
        0x68t
        0x30t
        0x69t
        0x30t
        0x6at
        0x30t
        0x6bt
        0x30t
        0x6ct
        0x30t
        0x6dt
        0x30t
        0x6et
        0x30t
        0x6ft
        0x30t
        0x70t
        0x30t
        0x71t
        0x30t
        0x72t
        0x30t
        0x73t
        0x30t
        0x74t
        0x30t
        0x75t
        0x30t
        0x76t
        0x30t
        0x77t
        0x30t
        0x78t
        0x30t
        0x79t
        0x30t
        0x7at
        0x30t
        0x7bt
        0x30t
        0x7ct
        0x30t
        0x7dt
        0x30t
        0x7et
        0x30t
        0x7ft
        0x30t
        0x80t
        0x30t
        0x81t
        0x30t
        0x82t
        0x30t
        0x83t
        0x30t
        0x84t
        0x30t
        0x85t
        0x30t
        0x86t
        0x30t
        0x87t
        0x30t
        0x88t
        0x30t
        0x89t
        0x30t
        0x8at
        0x30t
        0x8bt
        0x30t
        0x8ct
        0x30t
        0x8dt
        0x30t
        0x8et
        0x30t
        0x8ft
        0x30t
        0x90t
        0x30t
        0x91t
        0x30t
        0x92t
        0x30t
        0x93t
        0x30t
        0xa1t
        0x30t
        0xa2t
        0x30t
        0xa3t
        0x30t
        0xa4t
        0x30t
        0xa5t
        0x30t
        0xa6t
        0x30t
        0xa7t
        0x30t
        0xa8t
        0x30t
        0xa9t
        0x30t
        0xaat
        0x30t
        0xabt
        0x30t
        0xact
        0x30t
        0xadt
        0x30t
        0xaet
        0x30t
        0xaft
        0x30t
        0xb0t
        0x30t
        0xb1t
        0x30t
        0xb2t
        0x30t
        0xb3t
        0x30t
        0xb4t
        0x30t
        0xb5t
        0x30t
        0xb6t
        0x30t
        0xb7t
        0x30t
        0xb8t
        0x30t
        0xb9t
        0x30t
        0xbat
        0x30t
        0xbbt
        0x30t
        0xbct
        0x30t
        0xbdt
        0x30t
        0xbet
        0x30t
        0xbft
        0x30t
        0xc0t
        0x30t
        0xc1t
        0x30t
        0xc2t
        0x30t
        0xc3t
        0x30t
        0xc4t
        0x30t
        0xc5t
        0x30t
        0xc6t
        0x30t
        0xc7t
        0x30t
        0xc8t
        0x30t
        0xc9t
        0x30t
        0xcat
        0x30t
        0xcbt
        0x30t
        0xcct
        0x30t
        0xcdt
        0x30t
        0xcet
        0x30t
        0xcft
        0x30t
        0xd0t
        0x30t
        0xd1t
        0x30t
        0xd2t
        0x30t
        0xd3t
        0x30t
        0xd4t
        0x30t
        0xd5t
        0x30t
        0xd6t
        0x30t
        0xd7t
        0x30t
        0xd8t
        0x30t
        0xd9t
        0x30t
        0xdat
        0x30t
        0xdbt
        0x30t
        0xdct
        0x30t
        0xddt
        0x30t
        0xdet
        0x30t
        0xdft
        0x30t
        0xe0t
        0x30t
        0xe1t
        0x30t
        0xe2t
        0x30t
        0xe3t
        0x30t
        0xe4t
        0x30t
        0xe5t
        0x30t
        0xe6t
        0x30t
        0xe7t
        0x30t
        0xe8t
        0x30t
        0xe9t
        0x30t
        0xeat
        0x30t
        0xebt
        0x30t
        0xect
        0x30t
        0xedt
        0x30t
        0xeet
        0x30t
        0xeft
        0x30t
        0xf0t
        0x30t
        0xf1t
        0x30t
        0xf2t
        0x30t
        0xf3t
        0x30t
        0xf4t
        0x30t
        0xf5t
        0x30t
        0xf6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final FixBig5UnicodeForJP(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 99
    move-object v3, p0

    .line 100
    .local v3, rtn:Ljava/lang/String;
    sget-object v4, Lcom/htc/calendar/utils/ComposeTitleUtils;->Big5_str:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 104
    :try_start_0
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/htc/calendar/utils/ComposeTitleUtils;->Big5_arr:[B

    const-string v6, "Big5"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v4, Lcom/htc/calendar/utils/ComposeTitleUtils;->Big5_str:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    sget-object v4, Lcom/htc/calendar/utils/ComposeTitleUtils;->JP_str:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 116
    :try_start_1
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/htc/calendar/utils/ComposeTitleUtils;->JP_Unicode:[B

    const-string v6, "unicode"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v4, Lcom/htc/calendar/utils/ComposeTitleUtils;->JP_str:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 127
    sget-object v4, Lcom/htc/calendar/utils/ComposeTitleUtils;->Big5_str:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, idx:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 129
    sget-object v4, Lcom/htc/calendar/utils/ComposeTitleUtils;->Big5_str:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Lcom/htc/calendar/utils/ComposeTitleUtils;->JP_str:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 124
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1           #i:I
    .end local v2           #idx:I
    :catch_0
    move-exception v0

    .line 133
    .end local p0
    :goto_1
    return-object p0

    .line 118
    .restart local p0
    :catch_1
    move-exception v0

    .line 120
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_1

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_3
    move-object p0, v3

    .line 133
    goto :goto_1
.end method

.method public static final FixBig5UnicodeForJP([B)Z
    .locals 6
    .parameter "str"

    .prologue
    .line 139
    sget-object v3, Lcom/htc/calendar/utils/ComposeTitleUtils;->Big5_arr:[B

    array-length v2, v3

    .line 140
    .local v2, nLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, idx:I
    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    .line 143
    aget-byte v3, p0, v0

    sget-object v4, Lcom/htc/calendar/utils/ComposeTitleUtils;->Big5_arr:[B

    aget-byte v4, v4, v1

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    sget-object v4, Lcom/htc/calendar/utils/ComposeTitleUtils;->Big5_arr:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_1

    .line 144
    sget-object v3, Lcom/htc/calendar/utils/ComposeTitleUtils;->JP_Unicode:[B

    aget-byte v3, v3, v1

    aput-byte v3, p0, v0

    .line 145
    add-int/lit8 v3, v0, 0x1

    sget-object v4, Lcom/htc/calendar/utils/ComposeTitleUtils;->JP_Unicode:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    aput-byte v4, p0, v3

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 152
    .end local v1           #idx:I
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public static getDefaultCharset()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 17
    .local v0, sDefaultCharset:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 18
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x30

    if-ne v1, v2, :cond_2

    .line 20
    :cond_0
    const-string v0, "big5"

    .line 25
    :cond_1
    :goto_0
    const-string v1, "ComposeTitleUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sDefaultCharset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-object v0

    .line 22
    :cond_2
    const-string v0, "utf-8"

    goto :goto_0
.end method

.method public static final linesToByteString(Ljava/util/ArrayList;IILjava/lang/String;)Lcom/htc/calendar/utils/ByteString;
    .locals 7
    .parameter
    .parameter "from"
    .parameter "to"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/utils/ByteString;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Lcom/htc/calendar/utils/ByteString;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/utils/ByteString;>;"
    new-instance v3, Lcom/htc/calendar/utils/ByteString;

    invoke-direct {v3, p3}, Lcom/htc/calendar/utils/ByteString;-><init>(Ljava/lang/String;)V

    .line 76
    .local v3, b:Lcom/htc/calendar/utils/ByteString;
    invoke-virtual {v3}, Lcom/htc/calendar/utils/ByteString;->length()I

    move-result v5

    .line 77
    .local v5, bLen:I
    const-string v1, "ComposeTitleUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",to is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    move v6, p1

    .local v6, i:I
    :goto_0
    if-ge v6, p2, :cond_1

    .line 79
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/utils/ByteString;

    .line 80
    .local v0, s:Lcom/htc/calendar/utils/ByteString;
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/calendar/utils/ByteString;->regionMatches(ZILcom/htc/calendar/utils/ByteString;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    move p2, v6

    .line 78
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 84
    .end local v0           #s:Lcom/htc/calendar/utils/ByteString;
    :cond_1
    const-string v1, "ComposeTitleUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",to is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Lcom/htc/calendar/utils/ByteString;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/calendar/utils/ByteString;-><init>(Ljava/util/List;II)V

    .line 86
    .restart local v0       #s:Lcom/htc/calendar/utils/ByteString;
    return-object v0
.end method

.method public static final linesToString(Ljava/util/ArrayList;II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/utils/ByteString;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/utils/ByteString;>;"
    const-string v0, "us-ascii"

    invoke-static {p0, p1, p2, v0}, Lcom/htc/calendar/utils/ComposeTitleUtils;->linesToString(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final linesToString(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "from"
    .parameter "to"
    .parameter "charSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/utils/ByteString;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/utils/ByteString;>;"
    new-instance v1, Lcom/htc/calendar/utils/ByteString;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/calendar/utils/ByteString;-><init>(Ljava/util/List;II)V

    .line 47
    .local v1, s:Lcom/htc/calendar/utils/ByteString;
    invoke-virtual {v1, p3}, Lcom/htc/calendar/utils/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, rtn:Ljava/lang/String;
    const-string v2, "BIG5"

    invoke-virtual {p3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-static {v0}, Lcom/htc/calendar/utils/ComposeTitleUtils;->FixBig5UnicodeForJP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    return-object v0
.end method

.method public static final linesToString(Ljava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter "from"
    .parameter "to"
    .parameter "charSet"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/utils/ByteString;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/utils/ByteString;>;"
    new-instance v3, Lcom/htc/calendar/utils/ByteString;

    invoke-direct {v3, p4}, Lcom/htc/calendar/utils/ByteString;-><init>(Ljava/lang/String;)V

    .line 56
    .local v3, b:Lcom/htc/calendar/utils/ByteString;
    invoke-virtual {v3}, Lcom/htc/calendar/utils/ByteString;->length()I

    move-result v5

    .line 57
    .local v5, bLen:I
    const-string v1, "ComposeTitleUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",to is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    move v6, p1

    .local v6, i:I
    :goto_0
    if-ge v6, p2, :cond_1

    .line 59
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/utils/ByteString;

    .line 60
    .local v0, s:Lcom/htc/calendar/utils/ByteString;
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/calendar/utils/ByteString;->regionMatches(ZILcom/htc/calendar/utils/ByteString;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    move p2, v6

    .line 58
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 64
    .end local v0           #s:Lcom/htc/calendar/utils/ByteString;
    :cond_1
    const-string v1, "ComposeTitleUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",to is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Lcom/htc/calendar/utils/ByteString;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/calendar/utils/ByteString;-><init>(Ljava/util/List;II)V

    .line 67
    .restart local v0       #s:Lcom/htc/calendar/utils/ByteString;
    invoke-virtual {v0, p3}, Lcom/htc/calendar/utils/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, rtn:Ljava/lang/String;
    const-string v1, "BIG5"

    invoke-virtual {p3, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 69
    invoke-static {v7}, Lcom/htc/calendar/utils/ComposeTitleUtils;->FixBig5UnicodeForJP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 70
    :cond_2
    return-object v7
.end method

.method public static final needEncode([B)Z
    .locals 3
    .parameter "check"

    .prologue
    .line 274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 275
    aget-byte v1, p0, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    aget-byte v1, p0, v0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    :cond_0
    aget-byte v1, p0, v0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    .line 276
    :cond_1
    const/4 v1, 0x1

    .line 279
    :goto_1
    return v1

    .line 274
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static final rfc2047(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "header"

    .prologue
    .line 31
    invoke-static {}, Lcom/htc/calendar/utils/ComposeTitleUtils;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/calendar/utils/ComposeTitleUtils;->rfc2047(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final rfc2047(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "header"
    .parameter "charset"

    .prologue
    .line 35
    const-string v0, "ISO8859-1"

    invoke-static {p0, p1, v0}, Lcom/htc/calendar/utils/ComposeTitleUtils;->rfc2047(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final rfc2047(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .parameter "header"
    .parameter "charset"
    .parameter "orgCharset"

    .prologue
    .line 156
    if-nez p0, :cond_1

    .line 157
    const-string p0, ""

    .line 254
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 159
    .restart local p0
    :cond_1
    if-nez p1, :cond_2

    .line 160
    invoke-static {}, Lcom/htc/calendar/utils/ComposeTitleUtils;->getDefaultCharset()Ljava/lang/String;

    move-result-object p1

    .line 163
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 164
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    const-string v19, "\""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    const-string v19, "\""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 165
    const/16 v19, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 167
    :cond_3
    invoke-static {}, Lcom/htc/calendar/utils/Regex;->getInstance()Lcom/htc/calendar/utils/Regex;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lcom/htc/calendar/utils/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 169
    .local v14, m:Ljava/util/regex/Matcher;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v10

    .line 171
    .local v10, found:Z
    if-nez v10, :cond_5

    .line 176
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_0

    .line 177
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x7e

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 179
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 180
    .local v3, bytes:[B
    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v11, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .end local p0
    .local v11, header:Ljava/lang/String;
    move-object/from16 p0, v11

    .line 182
    .end local v11           #header:Ljava/lang/String;
    .restart local p0
    goto/16 :goto_0

    .line 176
    .end local v3           #bytes:[B
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 189
    .end local v12           #i:I
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v16, result:Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .line 191
    .local v17, searchStart:I
    new-instance v13, Ljava/util/ArrayList;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .local v13, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/utils/ByteString;>;"
    const/4 v15, 0x0

    .line 195
    .local v15, mCount:I
    :goto_2
    if-eqz v10, :cond_6

    .line 197
    add-int/lit8 v15, v15, 0x1

    .line 198
    const/16 v19, 0x14

    move/from16 v0, v19

    if-le v15, v0, :cond_8

    .line 249
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    sub-int v19, v19, v17

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 250
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 200
    :cond_8
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    .line 201
    .local v18, start:I
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    .line 202
    .local v9, end:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_b

    .line 209
    :goto_3
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, charSet:Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, encoding:Ljava/lang/String;
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, codedText:Ljava/lang/String;
    const-string v19, "q"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 218
    const/16 v19, 0x5f

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 221
    new-instance v19, Lcom/htc/calendar/utils/ByteString;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/htc/calendar/utils/ByteString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Lcom/htc/calendar/utils/QuotedPrintable;->decode(Ljava/util/ArrayList;IILjava/lang/String;)V

    .line 225
    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v13, v0, v1, v4}, Lcom/htc/calendar/utils/ComposeTitleUtils;->linesToString(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, decodedText:Ljava/lang/String;
    const-string v19, "BIG5"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_9

    .line 227
    invoke-static {v6}, Lcom/htc/calendar/utils/ComposeTitleUtils;->FixBig5UnicodeForJP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 229
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .end local v6           #decodedText:Ljava/lang/String;
    :cond_a
    :goto_4
    move/from16 v17, v9

    .line 246
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v10

    .line 247
    goto/16 :goto_2

    .line 205
    .end local v4           #charSet:Ljava/lang/String;
    .end local v5           #codedText:Ljava/lang/String;
    .end local v8           #encoding:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 230
    .restart local v4       #charSet:Ljava/lang/String;
    .restart local v5       #codedText:Ljava/lang/String;
    .restart local v8       #encoding:Ljava/lang/String;
    :cond_c
    const-string v19, "b"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 231
    const-string v6, ""

    .line 233
    .restart local v6       #decodedText:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 239
    :goto_5
    const-string v19, "BIG5"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_d

    .line 240
    invoke-static {v6}, Lcom/htc/calendar/utils/ComposeTitleUtils;->FixBig5UnicodeForJP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 242
    :cond_d
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 235
    :catch_0
    move-exception v7

    .line 236
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    const-string v6, ""

    goto :goto_5

    .line 181
    .end local v4           #charSet:Ljava/lang/String;
    .end local v5           #codedText:Ljava/lang/String;
    .end local v6           #decodedText:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #encoding:Ljava/lang/String;
    .end local v9           #end:I
    .end local v13           #lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/utils/ByteString;>;"
    .end local v15           #mCount:I
    .end local v16           #result:Ljava/lang/StringBuilder;
    .end local v17           #searchStart:I
    .end local v18           #start:I
    .restart local v12       #i:I
    :catch_1
    move-exception v19

    goto/16 :goto_0
.end method

.method public static rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"

    .prologue
    .line 262
    const-string v1, ""

    .line 265
    .local v1, result:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=?utf-8?B?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/htc/calendar/utils/Base64;->encodeBase64([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
