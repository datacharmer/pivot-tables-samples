$loh = [
  {
    '1993' => {
      'DataSmart' => {
        'Germany' => {
          'Frank' => {
            'software' => 23000
          }
        }
      }
    }
  },
  {
    '1993' => {
      'NewHardware' => {
        'Germany' => {
          'Frank' => {
            'hardware' => 45000
          }
        }
      }
    }
  },
  {
    '1993' => {
      'SmartEdu' => {
        'UK' => {
          'Martin' => {
            'hardware' => 50000
          }
        },
        'Germany' => {
          'Susan' => {
            'services' => 18000
          }
        }
      }
    }
  },
  {
    '1993' => {
      'total' => {
        'UK' => {
          'Martin' => {
            'hardware' => 50000
          }
        },
        'Germany' => {
          'Frank' => {
            'software' => 23000,
            'hardware' => 45000
          },
          'Susan' => {
            'services' => 18000
          }
        }
      }
    }
  },
  {
    '1992' => {
      'DataSmart' => {
        'Germany' => {
          'Frank' => {
            'services' => 60000
          }
        }
      }
    }
  },
  {
    '1992' => {
      'ViewData' => {
        'Germany' => {
          'Susan' => {
            'software' => 25000
          }
        }
      }
    }
  },
  {
    '1992' => {
      'total' => {
        'Germany' => {
          'Susan' => {
            'software' => 25000
          },
          'Frank' => {
            'services' => 60000
          }
        }
      }
    }
  },
  {
    'total' => {
      'total' => {
        'Germany' => {
          'Frank' => {
            'hardware' => 45000,
            'software' => 23000,
            'services' => 60000
          },
          'Susan' => {
            'software' => 25000,
            'services' => 18000
          }
        },
        'UK' => {
          'Martin' => {
            'hardware' => 50000
          }
        }
      }
    }
  }
];
$losh = [
  {
    'Germany#Frank#software' => 23000,
    'Germany#Frank#hardware' => undef,
    'UK' => undef,
    'Germany' => 23000,
    'total' => 23000,
    'customer' => 'DataSmart',
    'Germany#Susan#services' => undef,
    'Germany#Frank' => 23000,
    'UK#Martin#hardware' => undef,
    'Germany#Frank#services' => undef,
    'yyyy_mm' => '2003-10',
    'Germany#Susan#software' => undef,
    'Germany#Susan' => undef,
    'UK#Martin' => undef
  },
  {
    'total' => 45000,
    'customer' => 'NewHardware',
    'Germany#Frank#services' => undef,
    'yyyy_mm' => '2003-10',
    'Germany#Susan#services' => undef,
    'Germany#Frank' => 45000,
    'UK#Martin#hardware' => undef,
    'Germany' => 45000,
    'UK' => undef,
    'Germany#Frank#hardware' => 45000,
    'Germany#Frank#software' => undef,
    'UK#Martin' => undef,
    'Germany#Susan#software' => undef,
    'Germany#Susan' => undef
  },
  {
    'Germany#Susan#software' => undef,
    'Germany#Susan' => 18000,
    'UK#Martin' => 50000,
    'Germany#Frank#hardware' => undef,
    'Germany#Frank#software' => undef,
    'Germany' => 18000,
    'UK' => 50000,
    'customer' => 'SmartEdu',
    'total' => 68000,
    'Germany#Susan#services' => 18000,
    'UK#Martin#hardware' => 50000,
    'Germany#Frank' => undef,
    'Germany#Frank#services' => undef,
    'yyyy_mm' => '2003-10'
  },
  {
    'UK#Martin' => 50000,
    'Germany#Susan#software' => undef,
    'Germany#Susan' => 18000,
    'customer' => 'zzzz',
    'total' => 136000,
    'UK#Martin#hardware' => 50000,
    'Germany#Susan#services' => 18000,
    'Germany#Frank' => 68000,
    'Germany#Frank#services' => undef,
    'yyyy_mm' => '2003-10',
    'Germany#Frank#hardware' => 45000,
    'Germany#Frank#software' => 23000,
    'Germany' => 86000,
    'UK' => 50000
  },
  {
    'Germany#Frank' => 60000,
    'Germany#Susan#services' => undef,
    'UK#Martin#hardware' => undef,
    'Germany#Frank#services' => 60000,
    'yyyy_mm' => '2003-11',
    'customer' => 'DataSmart',
    'total' => 60000,
    'Germany#Frank#software' => undef,
    'Germany#Frank#hardware' => undef,
    'Germany' => 60000,
    'UK' => undef,
    'UK#Martin' => undef,
    'Germany#Susan' => undef,
    'Germany#Susan#software' => undef
  },
  {
    'UK#Martin' => undef,
    'Germany#Susan#software' => 25000,
    'Germany#Susan' => 25000,
    'customer' => 'ViewData',
    'total' => 25000,
    'Germany#Susan#services' => undef,
    'UK#Martin#hardware' => undef,
    'Germany#Frank' => undef,
    'yyyy_mm' => '2003-11',
    'Germany#Frank#services' => undef,
    'Germany#Frank#software' => undef,
    'Germany#Frank#hardware' => undef,
    'UK' => undef,
    'Germany' => 25000
  },
  {
    'UK#Martin#hardware' => undef,
    'Germany#Susan#services' => undef,
    'Germany#Frank' => 60000,
    'Germany#Frank#services' => 60000,
    'yyyy_mm' => '2003-11',
    'total' => 85000,
    'customer' => 'zzzz',
    'Germany#Frank#hardware' => undef,
    'Germany#Frank#software' => undef,
    'UK' => undef,
    'Germany' => 85000,
    'UK#Martin' => undef,
    'Germany#Susan' => 25000,
    'Germany#Susan#software' => 25000
  },
  {
    'Germany#Frank#software' => 23000,
    'Germany#Frank#hardware' => 45000,
    'Germany' => 171000,
    'UK' => 50000,
    'UK#Martin#hardware' => 50000,
    'Germany#Susan#services' => 18000,
    'Germany#Frank' => 128000,
    'yyyy_mm' => 'zzzz',
    'Germany#Frank#services' => 60000,
    'total' => 221000,
    'customer' => 'zzzz',
    'Germany#Susan' => 43000,
    'Germany#Susan#software' => 25000,
    'UK#Martin' => 50000
  }
];
$hoh = {
  'xtab' => {
    '1993' => {
      'total' => {
        'Germany' => {
          'Frank' => {
            'hardware' => 45000,
            'software' => 23000
          },
          'Susan' => {
            'services' => 18000
          }
        },
        'UK' => {
          'Martin' => {
            'hardware' => 50000
          }
        }
      },
      'DataSmart' => {
        'Germany' => {
          'Frank' => {
            'software' => 23000
          }
        }
      },
      'NewHardware' => {
        'Germany' => {
          'Frank' => {
            'hardware' => 45000
          }
        }
      },
      'SmartEdu' => {
        'UK' => {
          'Martin' => {
            'hardware' => 50000
          }
        },
        'Germany' => {
          'Susan' => {
            'services' => 18000
          }
        }
      }
    },
    'total' => {
      'total' => {
        'UK' => {
          'Martin' => {
            'hardware' => 50000
          }
        },
        'Germany' => {
          'Susan' => {
            'software' => 25000,
            'services' => 18000
          },
          'Frank' => {
            'services' => 60000,
            'software' => 23000,
            'hardware' => 45000
          }
        }
      }
    },
    '1992' => {
      'ViewData' => {
        'Germany' => {
          'Susan' => {
            'software' => 25000
          }
        }
      },
      'DataSmart' => {
        'Germany' => {
          'Frank' => {
            'services' => 60000
          }
        }
      },
      'total' => {
        'Germany' => {
          'Frank' => {
            'services' => 60000
          },
          'Susan' => {
            'software' => 25000
          }
        }
      }
    }
  }
};
