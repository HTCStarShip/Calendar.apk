.class public Lcom/htc/calendar/CalendarTabProvider;
.super Lcom/htc/content/CarouselProvider;
.source "CalendarTabProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.calendar.CalendarTabProvider"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/content/CarouselProvider;-><init>()V

    .line 11
    const-string v0, "com.htc.calendar.CalendarTabProvider"

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarTabProvider;->setupCarousel(Ljava/lang/String;)V

    .line 12
    return-void
.end method
