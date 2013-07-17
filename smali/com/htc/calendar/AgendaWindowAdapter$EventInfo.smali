.class Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventInfo"
.end annotation


# instance fields
.field begin:J

.field data1:Ljava/lang/String;

.field data2:Ljava/lang/String;

.field end:J

.field iCalGUID:Ljava/lang/String;

.field id:J

.field sync_account_type:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
