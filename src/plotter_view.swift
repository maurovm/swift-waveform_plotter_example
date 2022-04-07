/**
 * \file    plotter_view.swift
 * \author  Mauricio Villarroel
 * \date    Created: Feb 13, 2022
 * ____________________________________________________________________________
 *
 * Copyright (C) 2022 Mauricio Villarroel. All rights reserved.
 *
 * SPDX-License-Identifer:  GPL-2.0-only
 * ____________________________________________________________________________
 */

import SwiftUI
import WaveformPlotter


struct Plotter_view: View
{
    var body: some View
    {
        Sinusoidal_data_view(
                display_seconds : display_seconds,
                signal_seconds  : signal_seconds
            )
    }
    
    public init(
            display_seconds    : Int = 3,
            signal_seconds     : Int = 60
        )
    {
        self.display_seconds = display_seconds
        self.signal_seconds  = signal_seconds
    }
    
    
    // MARK: - Private state
    
    
    private let display_seconds : Int
    private let signal_seconds  : Int
    
}


struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        Plotter_view(
                display_seconds : 1,
                signal_seconds  : 6
            )
            .previewInterfaceOrientation(.landscapeRight)
    }
}
