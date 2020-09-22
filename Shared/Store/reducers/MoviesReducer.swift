//
//  MoviesReducer.swift
//  ReduxAsync
//
//  Created by Mohammad Azam on 9/21/20.
//

import Foundation

func moviesReducer(state: MoviesState, action: Action) -> MoviesState {
    
    var state = state
    
    switch action {
        case let action as SetMoviesAction:
            state.movies = action.movies
        default:
            break 
    }
    
    return state
}
